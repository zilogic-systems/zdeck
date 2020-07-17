# ZDeck

Framework to easily build beautiful slides from asciidoc files. These
files were originally part of the workshop-sessions repository. They
were separated out, so that they can be generally used for creating
any kind of slides.

## Install in Home Directory

  1. Clone the git repo:

    $ git clone https://github.com/zilogic-systems/zdeck.git
    $ cd zdeck

  2. Install in home directory

    $ make home-install

  3. Add the following line to your .bashrc

    $ PATH=~/.local/bin:$PATH

## Install in Debian with Root Access

  1. Clone the git repo:

    $ git clone https://github.com/zilogic-systems/zdeck.git
    $ cd zdeck

  2. Create the debian package.

    $ make deb

  3. Install the package.

    $ dpkg -i zdeck*.deb

## Usage

ZDeck supports two type of presentation formats:

  * Lightning Talks
  * Lectures

To create a presentation, create a folder for the presentation and
within the folder invoke the following command.

    $ zdeck-init <lecture|lightning>

This populates the current directory with template files, to get you
started. Run `make` to convert the `slides.asciidoc` file to
`slides.html`

    $ make

Check the contents of the `slides.asciidoc` and the rendered output in
`slides.html` to know the various constructs to create a presentation.

