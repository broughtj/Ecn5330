import subprocess

def main():
    cmd = '''R -e "rmarkdown::render('Unit-Roots.Rmd')"'''
    print(cmd)
    subprocess.call(cmd, shell=True)

if __name__ == "__main__": 
    main()
