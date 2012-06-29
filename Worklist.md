* 한글 입력기 문제
  * im-select 안깔면 세팅이 잘 안되는듯? 하다.
  * nabi와 im-select를 설치해서 일단 shift-space로 한영전환을 하는데 성공함.
  * nabi UI를 어딘가로 좀 치우던가 숨겨버려야겠다.
  * nabi 삭제하고 uim을 설치하니 훨씬 낫다.
    * 눈에 거슬리던 애플릿 창이 사라졌고
    * 설정은 문서화가 안되어있지만 uim-pref-gtk를 써서 하면 된다.
    * 도움말은 uim-help
    * 이제 dwm이랑 키가 겹쳐서 Super+Space로 한영전환을 바꾸지 못하는 문제를 고쳐야 함.
* ratpoison key binding 문제
  * tmux에서 쓰던 것과 같은 key binding을 설정해야 한다.
  * 걍 dwm이 짱이다 글로가자.
* ratpoison key rate 문제
  * 적절한 키 반복 레이트가 나오질 않는다.
  * config-keyrate를 써봤는데도 이러니 어쩔꼬...
  * fluxbox 등 다른 윈도우 매니저를 사용할 땐 안그러는듯.
  * xset r rate 200 50 정도가 적절한듯. 이걸 어디서 세팅하지?
    * ~/.xinitrc에 세팅해도 잘 안되고, ~/.xsession에 세팅하니 먹통되고...
    * ~/.xsessionrc에 세팅하니 잘 된다.
* 적절한 터미널 찾기
  * xterm 말고 폰트 사이즈가 적절하면서도 괜찮은 녀석을 찾아봐야 할듯.
  * 일단은 evilvte를 써보자. vte는 뭐지?
  * 아니다 evilvte는 layout이 바뀌지 않는 버그가 있다. 딴거쓰자.
  * 일단은 sakura 고
* 오 씨발 dwm을 찾았다. 짱좋다.
  * 근데 메뉴도 내가 설정해야돼!
  * 알트로 뭔가 세팅하게 되어있는데 모조리 meta로 바꾸고 싶다.
    * Customizing dwm
      * sudo apt-get install build-essentials x11-dev ...
      * 적절한 디렉토리를 만들고 apt-get source dwm
      * config.def.h를 고치고 dpkg-source --commit
        * 일단 meta키를 alt에서 super로 바꿈.
      * debuild
      * sign이 실패해도 그냥 dpkg -i로 설치
      * TODO: font 설정하기, 상단 타이틀에 dwm-6.0만 보여줄 게 아니라 시간 정보 보여주기
  * xmodmap을 쓰면 키 매핑을 볼 수 있고
  * xev로 직접 눌러보면서 테스트를 할 수 있다.
* 한영전환 바꾸기
  * 그냥 맥이랑 똑같아지게 meta+space로 바꾸는 게 나을듯.
  * uim-pref-gtk를 실행하여 설정하면 된다.
  * 앗, dwm에서 먼저 낚아채버린다. 다시 config.def.h를 고쳐
    * meta+space에 해당하는 부분을 제거한 후 다시 dpkg-source --commit; debuild; dpkg -i...
* pm-suspend
  * 대기 모드.
* sakura 색깔 바꾸기
  * ~/.config/sakura/sakura.conf 에서 원하는 설정을 할 수 있었다.
  * 색깔을 tango로 바꾸자 안보이던 파란색이 더 잘보이게됨.
  * palette=tango
* cherrytree를 깔아 써봤다.
  * note taking 앱으론 좋은데 내가 원하는 호환성은 없는듯.
* retext를 깔아 써보자.
  * mou랑 비슷한 녀석일 듯.
  * 한글 폰트 똥망요 ㅋㅋㅋ
* FAIL SOUND FUCK
  * Jack sensing mistake. should plugged audio into green jacks;
  * gnome에서 설정할 땐 되는데 이게 또 안된다. ㅠ
  * 걍 멘붕하고 gnome을 깔았다 지워서 해결. gnome-control-center 만이라도 깔아서 설정을 보면서 할 수 있음 좋겠다.

