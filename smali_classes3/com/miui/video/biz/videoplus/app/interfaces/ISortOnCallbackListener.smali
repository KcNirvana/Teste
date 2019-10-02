.class public interface abstract Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener;
.super Ljava/lang/Object;
.source "ISortOnCallbackListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;
    }
.end annotation


# static fields
.field public static final SORT_TYPE_DEFAULT:Ljava/lang/String; = "DEFAULT"

.field public static final SORT_TYPE_NAME:Ljava/lang/String; = "NAME"

.field public static final SORT_TYPE_SIZE:Ljava/lang/String; = "SIZE"

.field public static final SORT_TYPE_TIME:Ljava/lang/String; = "TIME"

.field public static final SPLIT_SYMBOL:Ljava/lang/String; = "-"


# virtual methods
.method public abstract onCallback(Landroid/view/View;ZLcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;)V
.end method

.method public abstract sortByName(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;Z)V
.end method

.method public abstract sortBySize(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;Z)V
.end method

.method public abstract sortByTime(Lcom/miui/video/biz/videoplus/app/interfaces/ISortOnCallbackListener$SortType;Z)V
.end method
