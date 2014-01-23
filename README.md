Overview
============

This .vimrc was developed with a few other engineers at my company to contain some of the plugins and shorcuts that we've found while using Vim. The hope is that this installation will get you up-and-running quickly without needing much vim knowledge in advance.

<img src="http://i.imgur.com/QkN0bpN.png" title="Gvim Screenshot"/></a>

### Installation
Simply clone this repo and symlink or copy the .vimrc to <code>~/.vimrc</code>. You can do the same with the .vimrc.local but that file is more for you to be able to customize your Vim setup. You can see from the local file above how to include font/colorscheme options as well as a few other things. 

If you have never used Vundle before, you can install it by running
<code>$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle</code>

Once you have the .vimrc, Vundle, and the additional dependences (see below) set up, you can run <code>:BundleInstall</code> within vim to install all the included bundles. Then you should be ready to go!

###Plugins
<i>Note: (leader) representes your leader key, defaulted to "," in this .vimrc</i>
<ol>
<li><b><a href="https://github.com/gmarik/vundle">Vundle</a></b> – A fantastic package manager for Vim.</li>
<li><b><a href="https://github.com/scrooloose/nerdtree">Nerdtree</a></b>  – The best file explorer for Vim. You can set bookmarks and open files in new tabs or splits.  
  <ul>
    <li> <code>(leader)f</code> - Jumps to current file's location in NerdTree. Useful for browsing in the same folder quickly without navigating through file structure</li>
  </ul>
</li>
<li><b><a href="https://github.com/majutsushi/tagbar">Tagbar</a></b>  – Tagbar uses the ctags library to display the tags of a file ordered by scope in a sidebar. This plugin requires <a href="http://ctags.sourceforge.net/">ctags</a> to work</li> 
<li><b><a href="https://github.com/kien/ctrlp.vim">Ctrlp</a></b>  – A full path fuzzy file, buffer, mru, tag, … finder for Vim. Allows you to quickly search your file system or buffer for a file.
  <ul>
    <li><code>(leader)b</code> - Opens CtrlP in buffer search mode (for quickly finding files you have previuosly opened)</li>
    <li><code>(ctrl)p</code> - Opens Ctrlp in file search mode. You can default it to open at a specific location in your .vimrc (like the root of your project, for example)</li>
  </ul>
</li>
<li><b><a href="https://github.com/scrooloose/syntastic">Syntastic</a></b>  – An awesome syntax checking plugin that works with external syntax checkers and displays syntax errors to you. </li>
<li><b><a href="https://github.com/bling/vim-airline">Vim-airline</a></b>   - Highly customizable vim status bar that allows you to display exactly what you want and comes with several awesome color schemes and even integrates with common Vim plugins like Tagbar and Ctrlp.
<a href="https://github.com/bling/vim-airline/wiki/screenshots/demo.gif" target="_blank"><img src="https://github.com/bling/vim-airline/wiki/screenshots/demo.gif" alt="img" style="max-width:100%;"></a>
</li>
<li><b><a href="https://github.com/corntrace/bufexplorer"> Bufexplorer </a></b> - Easy and quickly switch between buffers(aka files). Quickly switch back and forth between a group of files.
  <ul>
    <li><code>(leader)be</code> - Opens bufexplorer and shows list of recently opened files (in order of MRU by default)</li>
  </ul>
</li>
<li><b> <a href="https://github.com/ervandew/supertab">SuperTab</a></b> - Allows you to use tab for all of your auto-complete needs. 
<li><b><a href="https://github.com/shawncplus/phpcomplete.vim">PHPComplete</a></b> - Provides improved PHP omni-completion. In combination with Supertab it allows for <code>$this->(tab)</code> or <code>self::(tab)</code> to generate accurate auto-complete menus.
</li>
<li><b><a href="https://github.com/Lokaltog/vim-easymotion">Easy Motion</a></b> - Gives you the ability to quickly and precisely hop around a file with Vim motions. 
  <ul>
    <li><code>(leader)(leader)</code> is the default mapping to trigger motions. For example, <code>(leader)(leader)w</code> will highlight the first letter in each word below the cursor and allow you to select the exact word you want to cursor to hop to. 
  </ul>
  Animated demonstration from github page:
  <a href="https://github-camo.global.ssl.fastly.net/311e2034c078b3d7a53497020cda7b3bedda249d/687474703a2f2f6f6935342e74696e797069632e636f6d2f3279797365666d2e6a7067" target="_blank"><img src="https://github-camo.global.ssl.fastly.net/311e2034c078b3d7a53497020cda7b3bedda249d/687474703a2f2f6f6935342e74696e797069632e636f6d2f3279797365666d2e6a7067" alt="Animated demonstration" style="max-width:100%;"></a>
<li><b><a href="https://github.com/rstacruz/sparkup">Sparkup</b></a> - Lets you write HTML code faster.  Simply type shortand version of HTML and press <code>(ctrl)e</code> and sparkup will automatically generate valid HTML for you. A few examples from the docs:
<p><strong><code>div.align-left#header</code></strong> expands to:</p>
<div class="highlight highlight-html"><pre>    <span class="nt">&lt;div</span> <span class="na">id=</span><span class="s">"header"</span> <span class="na">class=</span><span class="s">"align-left"</span><span class="nt">&gt;&lt;/div&gt;</span>
</pre></div>
<p><strong><code>table &gt; tr*2 &gt; td.name + td*3</code></strong> expands to:</p>
<div class="highlight highlight-html"><pre>    <span class="nt">&lt;table&gt;</span>
        <span class="nt">&lt;tr&gt;</span>
            <span class="nt">&lt;td</span> <span class="na">class=</span><span class="s">"name"</span><span class="nt">&gt;&lt;/td&gt;</span>
            <span class="nt">&lt;td&gt;&lt;/td&gt;</span>
            <span class="nt">&lt;td&gt;&lt;/td&gt;</span>
            <span class="nt">&lt;td&gt;&lt;/td&gt;</span>
        <span class="nt">&lt;/tr&gt;</span>
        <span class="nt">&lt;tr&gt;</span>
            <span class="nt">&lt;td</span> <span class="na">class=</span><span class="s">"name"</span><span class="nt">&gt;&lt;/td&gt;</span>
            <span class="nt">&lt;td&gt;&lt;/td&gt;</span>
            <span class="nt">&lt;td&gt;&lt;/td&gt;</span>
            <span class="nt">&lt;td&gt;&lt;/td&gt;</span>
        <span class="nt">&lt;/tr&gt;</span>
    <span class="nt">&lt;/table&gt;</span>
</pre></div>
</li>
</ol>

###Dependencies
<ol>
  <li><a href="http://ctags.sourceforge.net/">Ctags</a> - As mentioned above, ctags is required for a few of the plugins. After you have it installed, if you have a project located at  <code>~/code/project1</code> you can run this command: <code>ctags -R -f ~/.vim/mytags/project1 ~/code/project1</code> to have ctags recursively generate a tags file for your project located at <code>~/code/project1</code> and then place that tags file in <code>~/.vim/mytags/project1</code>. It's not required to do this but storing tag files in folders named after the project they represent is a nice way of keeping things organized. The final step is to run <code>:set tags=~/.vim/mytags/project1</code> inside of Vim. 
  Here are a few things you can do with a tags file set up:
    <ul>
      <li> <code>(leader)]</code> - Vim's built in function jumping command. Simply place your cursor over a function definition and this command will take you to where that function was defined (opening up a new file if necessary). </li>
      <li> Autocomplete with SuperTab - As mentioned above, SuperTab allows you to take advantage of Vim's built in auto-completion and a tags file allows it to know about functions and classes in your entire project.</li>
       <li> Tagbar uses ctags to generate an overview of the current file so you can get an idea of the functions/variables that exists. This is especially helpful for large files. </li>
    <ul>
  </li>
<li> Patched fonts for Vim Airline - For the fancy symbols to appear (and they do look good) you will need a patched font. Here are the instructions from the vim-airline github page:
<pre><p>For the nice looking powerline symbols to appear, you will need to install a patched font. 
Instructions can be found in the official powerline <a href="https://powerline.readthedocs.org/en/latest/fontpatching.html">documentation</a>. Prepatched fonts can be 
found in the <a href="https://github.com/Lokaltog/powerline-fonts">powerline-fonts</a> repository.</p></pre>
My favorite font is Insconsolata.</li>
<li> Colorscheme - While everyone has a personal preference I recommend <a href="http://ethanschoonover.com/solarized">solarized</a>, an extremely popular colorscheme that comes in both light and dark. <b>It comes with this vim setup</b> so if you like it and you use the graphical version of Vim then you don't need do do anything. If you use regular Vim or want an alternative colorscheme I've also included <a href="https://github.com/tomasr/molokai">molokai</a> and <a href="https://github.com/nanotech/jellybeans.vim">jellybeans</a>. You can also choose to use a built-in colorscheme. You can check those out by typing <code>:colorscheme (tab)</code>
You can view a larege selection of Vim colorschemes <a href="https://code.google.com/p/vimcolorschemetest/">here</a>.
</li>
<img src="http://ethanschoonover.com/solarized/img/solarized-vim.png" alt="solarized vim">
<img style="float:left" src="http://i.imgur.com/Z1w74uf.png" title="molokai vim"/>
<img style="float:left" src="http://i.imgur.com/kMgqhtQ.png" title="jellybeans vim"/>

</ol>
