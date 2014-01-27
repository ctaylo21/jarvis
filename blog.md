## Vim - Next Jump Style with Jarvis
Next Jump’s Vim lovers have come together to collect, document, and open-source some of the best plugins, shortcuts, and user commands into one .vimrc. We hope that our setup, which we call <a href=''>Jarvis</a>, can help anyone hit the ground running with an awesome Vim configuration.

<img src="http://i.imgur.com/QkN0bpN.png" title="Gvim Screenshot"/></a>

### The Motivation
&nbsp;&nbsp;&nbsp;&nbsp;Next Jumpers are a diverse group. This diversity translates to our choice of coding environment as well. If you have ever watched someone who has mastered their editor write code, you know it is a thing of beauty. They quickly open files with a few key strokes, use shortcuts for all of the common commands, quickly hop to the location they want to edit in a file, and employ a host of other shortcuts or plugins that generally make them very, very fast. I witnessed this for the first time when I originally joined Next Jump. A senior engineer had spent years working in Vim, and watching him code with it was simply amazing. His hands never left the keyboard, he moved around a file faster than you could with a mouse and I was inspired to immediately begin using Vim. Unfortunately, my aspirations of becoming a Vim master shattered nearly immediately. One of my favorite images on the internet parodies the learning curve for a few popular editors:

<p align="center">
<img src="http://i.imgur.com/howSiB6.jpg" title="Learning curve" style='width:100%'/>
</p>

&nbsp;&nbsp;&nbsp;&nbsp;I have since become an avid user of Vim and have spent countless hours customizing my own configuration file. Mastering the tools you work with every day while coding is an important part of being a good engineer. It surprises me how often people simply take the vanilla settings of a text editor or an IDE and never attempt to modify them. I was discussing this with a few engineers during a <a href="http://devpoets.com">Dev Poets Society</a> meeting and we began to talk about our own Vim setups. It was surprising how many awesome plugins and shortcuts we discussed that I'd never known about. So we decided to combine our efforts to come up with Next Jump's first company-wide .vimrc. It has some of the good stuff that almost every Vimmer should have: Nerdtree, Ctrlp, Syntastic, Tagbar, and BufExplorer. It also has some lesser known plugins and a collection of settings, customizations, and shortcuts that have proved beneficial to our productivity.

###Features
&nbsp;&nbsp;&nbsp;&nbsp; One of the best ways to measure the effectiveness of an editor is how you can use it to handle common programming tasks and problems. The setup is very thoroughly documentated but if you are new to Vim here are some highlights of how this setup can help improve your productivity (please note that here we have mapped the <code>,</code> key as the leader):

<ol>
  <li>
  Dealing with multiple files</u> - Programming frequently involves switching back and forth between a group of files. With Jarvis, you can type <code>,be</code> to open <b>BufExplorer</b> and see a list of recently used files or <code>,b</code> and begin typing the name of the file to have <b>CtrlP</b> fuzzy-find the file in your buffer.
  </li>
  <li>
    <u>Finding a file</u> - Typing <code>(ctrl)p</code> (for sublime users) or <code>,t</code> opens up <b>CtrlP</b> and lets you search your current project for a file name. Want to browse the directory of the file you are working on? <code>,f</code> jumps to the location of the current file in <b>NerdTree</b>, a tree explorer plugin. 
    </li>
  </li>
  <li>
    <u>Syntax checking</u> - With the <b>Syntastic</b> plugin you get real-time syntax checking in a ton of different languages.
  </li>
  <li>
    <u>Auto-complete</u> - With <b>SuperTab</b> and <b>PHPComplete</b> you can type <code>$this->(tab)</code> or <code>self::(tab)</code> to generate a list of possible completions. This is a huge timesaver and also works with variable names.
  </li>
  <li>
    <u>Function jumping</u> - Want to jump to the spot a function was defined from a call in your current file? With ctags you can use Vim's built in <code>(ctrl)]</code> with your cursor on the function to jump to the function definition (even if it's in a new file).
  </li>
  <li>
    Writing HTML - Web developers often run into the tedious task of typing out large blocks of HTML. <b>Sparkup</b> allows you to type an abbreviated version and type <code>(ctrl)e</code> to generate the valid HTML. For example: <code>table > tr*2 > td.name + td*3</code> expands to:
    
    <pre>    &lt;table&gt;
        &lt;tr&gt;
            &lt;td class="name"&gt;&lt;/td&gt;
            &lt;td&gt;&lt;/td&gt;
            &lt;td&gt;&lt;/td&gt;
            &lt;td&gt;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td class="name"&gt;&lt;/td&gt;
            &lt;td&gt;&lt;/td&gt;
            &lt;td&gt;&lt;/td&gt;
            &lt;td&gt;&lt;/td&gt;
        &lt;/tr&gt;
    &lt;/table&gt;
</pre>
  </li>
</ol>

For a full set of docs please check out the git repo and please don't hesitate to fork and send pull requests for improvements or report any issues. 

Happy Vimming!<br/>
Next Jump
