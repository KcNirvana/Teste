.class public abstract Landroid/view/Window;
.super Ljava/lang/Object;
.source "Window.java"


# static fields
.field public static final FEATURE_NO_TITLE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addExtraFlags(I)V
.end method

.method public abstract addFlags(I)V
.end method

.method public abstract clearFlags(I)V
.end method

.method public abstract getAttributes()Landroid/view/WindowManager$LayoutParams;
.end method

.method public abstract getDecorView()Landroid/view/View;
.end method

.method public abstract peekDecorView()Landroid/view/View;
.end method

.method public abstract setAttributes(Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public abstract setBackgroundDrawableResource(I)V
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
.end method

.method public abstract setContentView(I)V
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setFlags(II)V
.end method

.method public abstract setGravity(I)V
.end method

.method public abstract setLayout(II)V
.end method

.method public abstract setSoftInputMode(I)V
.end method

.method public abstract setWindowAnimations(I)V
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
.end method
