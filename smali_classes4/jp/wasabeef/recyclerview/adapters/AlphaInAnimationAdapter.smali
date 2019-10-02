.class public Ljp/wasabeef/recyclerview/adapters/AlphaInAnimationAdapter;
.super Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;
.source "AlphaInAnimationAdapter.java"


# static fields
.field private static final DEFAULT_ALPHA_FROM:F


# instance fields
.field private final mFrom:F


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljp/wasabeef/recyclerview/adapters/AlphaInAnimationAdapter;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;F)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;F)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput p2, p0, Ljp/wasabeef/recyclerview/adapters/AlphaInAnimationAdapter;->mFrom:F

    return-void
.end method


# virtual methods
.method protected getAnimators(Landroid/view/View;)[Landroid/animation/Animator;
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/Animator;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Ljp/wasabeef/recyclerview/adapters/AlphaInAnimationAdapter;->mFrom:F

    const/4 v5, 0x0

    aput v4, v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v0

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v1, v5

    return-object v1
.end method
