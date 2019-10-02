.class public Ljp/wasabeef/recyclerview/adapters/ScaleInAnimationAdapter;
.super Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;
.source "ScaleInAnimationAdapter.java"


# static fields
.field private static final DEFAULT_SCALE_FROM:F = 0.5f


# instance fields
.field private final mFrom:F


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, v0}, Ljp/wasabeef/recyclerview/adapters/ScaleInAnimationAdapter;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;F)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;F)V
    .locals 0

    invoke-direct {p0, p1}, Ljp/wasabeef/recyclerview/adapters/AnimationAdapter;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iput p2, p0, Ljp/wasabeef/recyclerview/adapters/ScaleInAnimationAdapter;->mFrom:F

    return-void
.end method


# virtual methods
.method protected getAnimators(Landroid/view/View;)[Landroid/animation/Animator;
    .locals 8

    const-string v0, "scaleX"

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Ljp/wasabeef/recyclerview/adapters/ScaleInAnimationAdapter;->mFrom:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v2, "scaleY"

    new-array v6, v1, [F

    iget v7, p0, Ljp/wasabeef/recyclerview/adapters/ScaleInAnimationAdapter;->mFrom:F

    aput v7, v6, v4

    aput v3, v6, v5

    invoke-static {p1, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v1, v1, [Landroid/animation/ObjectAnimator;

    aput-object v0, v1, v4

    aput-object p1, v1, v5

    return-object v1
.end method
