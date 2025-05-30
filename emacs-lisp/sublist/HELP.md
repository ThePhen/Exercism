# Help

## Running the tests

Tests can be run several ways.

## Interactively from within Emacs

1. Open test file, `M-x eval-buffer RET`
2. Interactively and individually, with `M-x ert RET test-name RET`
3. Interactively and all at once, with `M-x ert RET t RET`
   Note that this will run all tests currently loaded into Emacs!
4. Rerun `M-x eval-buffer RET` before testing whenever you've made changes

To only execute the tests in the current buffer you can add this to your `.emacs` or `init.el`:

```elisp
(defun my-eval-and-run-all-tests-in-buffer ()
  "Deletes all loaded tests from the runtime, evaluates the current buffer and runs all loaded tests with ert."
  (interactive)
  (ert-delete-all-tests)
  (eval-buffer)
  (ert 't))
```

After restarting Emacs:

1. Open test file
2. `M-x my-eval-and-run-all-tests-in-buffer RET`

## From the terminal

To run run all tests from the terminal, in batch mode, execute `emacs -batch -l ert -l *-test.el -f ert-run-tests-batch-and-exit`

The above command is a bit unwieldy, so if you like:

1. Create a file on your `$PATH` (probably in `~/bin`) called `ert-run`
2. The contents of the file should be as follows:
   ```sh
   #!/usr/bin/env sh
   emacs -batch -l ert -l $1 -f ert-run-tests-batch-and-exit
   ```
3. Make the file executable with `chmod +x ert-run`

You should be able to simply call `ert-run *-test.el` and run the tests
in batch mode.

## Other options

Other options can be found in the docs, `C-h i m ert RET`.

## Submitting your solution

You can submit your solution using the `exercism submit sublist.el` command.
This command will upload your solution to the Exercism website and print the solution page's URL.

It's possible to submit an incomplete solution which allows you to:

- See how others have completed the exercise
- Request help from a mentor

## Need to get help?

If you'd like help solving the exercise, check the following pages:

- The [Emacs Lisp track's documentation](https://exercism.org/docs/tracks/emacs-lisp)
- The [Emacs Lisp track's programming category on the forum](https://forum.exercism.org/c/programming/emacs-lisp)
- [Exercism's programming category on the forum](https://forum.exercism.org/c/programming/5)
- The [Frequently Asked Questions](https://exercism.org/docs/using/faqs)

Should those resources not suffice, you could submit your (incomplete) solution to request mentoring.

To get help if you're having trouble, you can use one of the following resources:

- [The Emacs Wiki](http://emacswiki.org/) is invaluable. Spend lots of time here.
- [The Emacs Editor](http://www.gnu.org/software/emacs/manual/html_node/emacs/index.html) is the official manual for GNU Emacs.
- IRC - there are [Libera.Chat](https://libera.chat/) channels for `#emacs`, `#org-mode`, and many Emacs
  packages, and many helpful folks around. And with emacs, IRC is as close as
  `M-x erc`.
- Matrix - on [Matrix](https://matrix.org/) there are rooms for [emacs](https://matrix.to/#/#emacs:matrix.org), [org-mode](https://matrix.to/#/#org-mode:matrix.org), and other Emacs packages.
  You can [join the Emacs Matrix space](https://matrix.to/#/#emacs-space:matrix.org) to get an overview of the available channels.
  To join Matrix from within Emacs you can use the [Ement.el](https://github.com/alphapapa/ement.el) package.
- [StackOverflow](http://stackoverflow.com/questions/tagged/elisp) and [Emacs StackExchange](https://emacs.stackexchange.com/questions/tagged/elisp) can be used to search for your problem and see if it has been answered already. You can also ask and answer questions.