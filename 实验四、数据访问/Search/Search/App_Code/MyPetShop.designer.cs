﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.42000
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="Database")]
public partial class MyPetShopDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region 可扩展性方法定义
  partial void OnCreated();
  partial void InsertCategory(Category instance);
  partial void UpdateCategory(Category instance);
  partial void DeleteCategory(Category instance);
  #endregion
	
	public MyPetShopDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public MyPetShopDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public MyPetShopDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public MyPetShopDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public MyPetShopDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<Category> Category
	{
		get
		{
			return this.GetTable<Category>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Category")]
public partial class Category : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _CategoryId;
	
	private string _Name;
	
	private string _Descn;
	
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnCategoryIdChanging(int value);
    partial void OnCategoryIdChanged();
    partial void OnNameChanging(string value);
    partial void OnNameChanged();
    partial void OnDescnChanging(string value);
    partial void OnDescnChanged();
    #endregion
	
	public Category()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CategoryId", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int CategoryId
	{
		get
		{
			return this._CategoryId;
		}
		set
		{
			if ((this._CategoryId != value))
			{
				this.OnCategoryIdChanging(value);
				this.SendPropertyChanging();
				this._CategoryId = value;
				this.SendPropertyChanged("CategoryId");
				this.OnCategoryIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="NChar(10)")]
	public string Name
	{
		get
		{
			return this._Name;
		}
		set
		{
			if ((this._Name != value))
			{
				this.OnNameChanging(value);
				this.SendPropertyChanging();
				this._Name = value;
				this.SendPropertyChanged("Name");
				this.OnNameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Descn", DbType="NChar(10)")]
	public string Descn
	{
		get
		{
			return this._Descn;
		}
		set
		{
			if ((this._Descn != value))
			{
				this.OnDescnChanging(value);
				this.SendPropertyChanging();
				this._Descn = value;
				this.SendPropertyChanged("Descn");
				this.OnDescnChanged();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
#pragma warning restore 1591
