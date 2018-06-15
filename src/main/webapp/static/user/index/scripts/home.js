/*
* @Author: Marte
* @Date:   2018-06-05 09:03:38
* @Last Modified by:   Marte
* @Last Modified time: 2018-06-05 09:04:06
*/

'use strict';

$(function(){
      $('.case-list li:nth-child(3n)').css('marginRight', 0);

      //顶部轮播
      $('#caseList3,#caseLeft3, #caseRight3').mouseover(function(){
        $('#caseLeft3, #caseRight3').css({ opacity:'1',zIndex:'10' });
      }).mouseout(function(){
        $('#caseLeft3, #caseRight3').css({ opacity:'0',zIndex:'-10' });
      });
      $('#caseList3').carouFredSel({
        direction:"left",
        //width: '260',
        circular:true,
        prev: '#caseLeft3',
        next: '#caseRight3',
        pagination  : {
            container: "#casePager3",
            anchorBuilder: false
        },
        items: {
          visible: 1,
          width: 900,
          height: 518
        },
        scroll:{
          items:1,
          fx: 'scroll',
          pauseOnHover:true,
          pauseDuration:3000,
        }
      });

      //案例轮播
      $('#caseList').carouFredSel({
        circular:true,
        items: {
          visible: 1,
          width: 602,
          height: 350
        },
        direction:"left",
        pagination:'#casepages',
        scroll:{
          items:1,
          //easing:"elastic",
          //duration:700,
          pauseOnHover:true,
          pauseDuration:10000
          //fx: 'uncover'
        }
      });

      //推荐案例
      $('#caseList2').carouFredSel({
        direction:"left",
        //width: '260',
        circular:true,
        prev: '#casePrev2',
        next: '#caseNext2',
        pagination: "#casePager2",
        items: {
          visible: 1,
          width: 260,
          height: 195
        },
        scroll:{
          items:1,
        pauseOnHover:true,
          fx: 'scroll'
        }
    });


    });