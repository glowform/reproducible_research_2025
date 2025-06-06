git init --bare CentralRepo
git clone CentralRepo Dev1
git clone CentralRepo Dev2
cd Dev1
echo "Hello master" > file1.txt
git add file1.txt
git commit -m "Add file1.txt"
echo "Hello master" > file2.txt
git add file2.txt
git commit -m "Add file2.txt"
git push
cd ../Dev2
git pull
cd ../Dev1
git branch feature1
git checkout feature1
echo "Hello feature1" > file3.txt
git add file3.txt
git commit -m "Add file3.txt"
git push -u origin feature1
git checkout master
echo "Hello master" > file4.txt
git add file4.txt
git commit -m "Add file4.txt"
git push
cd ../Dev2
git pull
git checkout master
echo "Hello master" > file5.txt
git add file5.txt
git commit -m "Add file5.txt"
git checkout feature1
echo "Hello feature1" > file6.txt
git add file6.txt
git commit -m "Add file6.txt"
git checkout master
git status
git push
git checkout feature1
git status 
git push

