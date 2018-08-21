.class public Lcom/ali/user/mobile/util/ResizeScrollView;
.super Lcom/ali/user/mobile/util/AUScrollView;
.source "ResizeScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/mobile/util/ResizeScrollView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/ali/user/mobile/util/ResizeScrollView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/util/AUScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/util/AUScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ali/user/mobile/util/AUScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/util/ResizeScrollView;->a:Lcom/ali/user/mobile/util/ResizeScrollView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/util/ResizeScrollView;->a:Lcom/ali/user/mobile/util/ResizeScrollView$a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ali/user/mobile/util/ResizeScrollView$a;->a(IIII)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ali/user/mobile/util/AUScrollView;->onSizeChanged(IIII)V

    return-void
.end method

.method public setOnSizeChangedListener(Lcom/ali/user/mobile/util/ResizeScrollView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/util/ResizeScrollView;->a:Lcom/ali/user/mobile/util/ResizeScrollView$a;

    return-void
.end method
