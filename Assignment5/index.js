 var counter = 1;

document.getElementById('addDivButton').addEventListener('click', function() 
{
   var d = document.createElement('div');
   d.classList.add('dynamic-div');
   d.id = 'div' + counter;

        
   var n = document.createElement('input');
   n.type = 'text';
   n.placeholder = 'Text ' + counter;

           
    var r = document.createElement('button');
    r.innerText = 'Remove';

    r.addEventListener('click', function(){
    d.remove();
    });
       
    d.appendChild(n);
    d.appendChild(r);
        
    document.getElementById('container').appendChild(d);
       
    counter++;
});