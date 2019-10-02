.class public Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;
.super Ljava/lang/Object;
.source "ShareChannelEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity$onIntentSelectedListener;
    }
.end annotation


# instance fields
.field private alias:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private mDisplayResloveInfo:Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayResloveInfo()Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->mDisplayResloveInfo:Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedPrint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAlias(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->alias:Ljava/lang/String;

    return-object p0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->className:Ljava/lang/String;

    return-void
.end method

.method public setDisplayResloveInfo(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->mDisplayResloveInfo:Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    return-void
.end method
