   $('#musicSwitch').on('click',function(){
        $(this).hasClass('active')?$(this).removeClass('active'):$(this).addClass('active');
        if(!$('#skPlayer').find('audio').length){
        
