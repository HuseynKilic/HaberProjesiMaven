<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src='<s:url value="resources/dist/img/avatar04.png"></s:url>' class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Atakan</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat">
                  <i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
      
      
        <li class="header">ANA MENÜ</li>
        
        
        <li class="active treeview menu-open">
            <a href="#">
            <i class="fa fa-dashboard"></i> <span>Haber</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
           </a>
          <ul class="treeview-menu">
            <li><a href='<s:url value="haberekle"></s:url>'><i class="fa fa-circle-o"></i>Haber Islem</a></li>
            <li><a href='<s:url value="yazar"></s:url>'><i class="fa fa-circle-o"></i>Yazar Islem</a></li>
            <li><a href='<s:url value="yazilar"></s:url>'><i class="fa fa-circle-o"></i>Yazılar </a></li>
            
          </ul>
        </li>
      
 
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>