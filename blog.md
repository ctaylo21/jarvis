## Vim - Next Jump Style with Jarvis
The Vim lovers at Next Jump have come together and built a .vimrc that is comprised of some of the best plugins, shortcuts, and user commands that we have open-sourced and thoroughly documented to allow anyone to be able to hit the ground running with an awesome Vim setup we call <a href=''>Jarvis</a>.

<img src="http://i.imgur.com/QkN0bpN.png" title="Gvim Screenshot"/></a>

### The Motivation
&nbsp;&nbsp;&nbsp;&nbsp;Here at Next Jump we are a diverse group. This applies to our choice of coding environment as well. If you have ever watched someone write code that has mastered their code editor, you know it is a thing of beauty. They quickly open files with a few key strokes, use shortcuts for all of the common commands, can quickly hop to the location they want to edit in a file, and a host of other shortcuts or plugins that generally make them very, very fast. I witnessed this for the first time when I first joined Next Jump. A senior engineer had spent years working in Vim and watching him code with it was simply amazing. His hands never left the keyboard, he moved around a file faster than you could with a mouse and I was inspired to immediately being using Vim. My illusion of becoming a master of Vim shattered nearly immediately. One of my favorite images in the internet graphs (mostly as a joke) the learning curve for a few popular editors:

<p align="center">
<img src="http://i.imgur.com/howSiB6.jpg" title="Learning curve" style='width:100%'/>
</p>

&nbsp;&nbsp;&nbsp;&nbsp;I have since become an avid user of Vim and have spent countless hours customizing my own configuration file. I believe that mastering the tools you work with every day while coding is an important part of being a good engineer. It surprises me how often people simply take the vanilla settings of a text editor or IDE and never attempt to modify them. I was discussing this with a few engineers during a Dev Poets Society meeting and we began to talk about our own Vim setups and it was surprising how many awesome plugins and shortcuts that I never knew about. So we decided to join our collective minds to come up with our first company-wide .vimrc. It has some of the good stuff that almost every Vimmer should have: Nerdtree, Ctrlp, Syntastic, Tagbar, and BufExplorer. It also has some lesser known plugins and a collection of settings, customizations, and shortcuts that have proved to increase our productivity.

###Features
&nbsp;&nbsp;&nbsp;&nbsp; One of the best ways to measure the effectiveness of an editor is how you can use it to handle common tasks and problems that arise while programming. The docs have very thorough documentation of the setup but if you are new to Vim here are some highlights of how this setup can help improve your productivity:

<ol>
  <li>
  Dealing with multiple files</u> - Programming frequently involves switching back and forth between a group of files. With Jarvis, you can type <code>,be</code> to open <b>BufExplorer and see a list of recently used files or <code>,b</code> and begin typing the name of the file to have CtrlP fuzzy-find the file in your buffer.
  </li>
  <li>
    <u>Finding a file</u> - Typing <code>(ctrl)p</code> (for sublime users) or <code>,t</code> opens up CtrlP and lets you search your current project for a file name. Want to browse the directory of the file you are working on? <code>,f</code> jumps to the location of the current file in NerdTree, a tree explorer plugin. 
    </li>
  </li>
  <li>
    <u>Syntax checking</u> - With the Syntastic plugin you get real-time syntax checking in a ton of different languages.
  </li>
  <li>
    <u>Auto-complete</u> - With SuperTab and PHPComplete you can type <code>$this->(tab)</code> or <code>self::(tab)</code> to generate a list of possible completions. This is a huge timesaver and also works with variable names.
  </li>
  <li>
    <u>Function jumping</u> - Want to jump to the spot a function was defined from a call in your current file? With ctags you can use Vim's built in <code>(ctrl)]</code> with your cursor on the function to jump to the function definition (even if it's in a new file).
  </li>
  <li>
    Writing HTML - Web developers often run into the tedious task of typing out large blocks of HTML. Sparkup allows you to type an abbreviated version and type <code>(ctrl)e</code> to generate the valid HTML. For example: <code>table > tr*2 > td.name + td*3</code> expands to:
    
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


