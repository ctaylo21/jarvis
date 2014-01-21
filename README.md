Overview
============

This .vimrc was developed with a few other engineers at my company to contain some of the plugins and shorcuts that we've found while using Vim.

Plugins
------------
<i>Note: (leader) representes your leader key, defaulted to "," in this .vimrc</i>
<ol>
<li><b><a href="https://github.com/gmarik/vundle"Vundle</a></b> – A fantastic package manager for Vim.</li>
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
<li><b><a href="https://github.com/corntrace/bufexplorer"> Bufexplorer </a></b> - Easy and quickly sswitch between buffers(aka files). Quickly switch back and forth between a group of files.
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
