import subprocess

def main():
    cmd = '''R -e "rmarkdown::render('vars.Rmd')"'''
    subprocess.call(cmd, shell=True)
    print(cmd)

if __name__ == "__main__":
    main()


