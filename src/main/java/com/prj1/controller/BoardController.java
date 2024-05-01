package com.prj1.controller;

import com.prj1.domain.Board;
import com.prj1.service.BoardService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequiredArgsConstructor
public class BoardController {

    private final BoardService service;

    @GetMapping("/add")
    public String add() {
        return "board/add";
    }

    @PostMapping("/add")
    public String addPost(Board board, RedirectAttributes rttr) {
        service.add(board);

        rttr.addAttribute("id", board.getId());
        return "redirect:/board";
    }

    // /board?id=3
    @GetMapping("/board")
    public String view(Integer id, Model model) {
        // 게시물 조회(select)
        Board board = service.get(id);

        // 모델에 넣고
        model.addAttribute("board", board);
        // jsp 로 포워드
        return "board/view";
    }

    @GetMapping("/")
    public String home(Model model) {
        // 게시물 목록 조회(select)
        // 모델에 넣고
        model.addAttribute("boardList", service.list());
        // jsp로 포워드
        return "board/home";
    }

    @PostMapping("/delete")
    public String delete(Integer id) {
        service.remove(id);

        return "redirect:/";
    }
}
