.class public Lcom/miui/video/common/feed/ui/UIStyle;
.super Ljava/lang/Object;
.source "UIStyle.java"

# interfaces
.implements Lcom/miui/video/framework/impl/IUIStyle;


# instance fields
.field private mStyle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/video/common/feed/ui/UIStyle;->mStyle:I

    return-void
.end method


# virtual methods
.method public getStyle()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/feed/ui/UIStyle;->mStyle:I

    return v0
.end method

.method public onStyleChange(I)V
    .locals 0

    return-void
.end method

.method public onStyleDark()V
    .locals 0

    return-void
.end method

.method public onStyleLight()V
    .locals 0

    return-void
.end method

.method public setStyle(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/feed/ui/UIStyle;->mStyle:I

    return-void
.end method
