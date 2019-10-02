.class public abstract Lcom/miui/video/biz/videoplus/fragmentplus/BaseData;
.super Ljava/lang/Object;
.source "BaseData.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mListener:Lcom/miui/video/framework/impl/IActivityListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/miui/video/framework/impl/IActivityListener;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/fragmentplus/BaseData;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/fragmentplus/BaseData;->mListener:Lcom/miui/video/framework/impl/IActivityListener;

    return-void
.end method


# virtual methods
.method public abstract startData(Landroid/content/Intent;)V
.end method

.method public abstract stopData()V
.end method
