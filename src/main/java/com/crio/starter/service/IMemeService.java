package com.crio.starter.service;

import com.crio.starter.data.Meme;
import java.util.List;
import java.util.Optional;

public interface IMemeService {
    Long createMeme(Meme xmeme);

    List<Meme> getMeme();

    Optional<Meme> getMemeById(Long id);

    void updateMeme(Optional<Meme> meme);

    List<Meme> memeExist(Meme meme);
}
