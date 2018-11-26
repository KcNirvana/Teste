.class public Lcom/miui/securityscan/ui/main/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field final synthetic Ho:Lcom/miui/securityscan/ui/main/BallView;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/ui/main/BallView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/f;->Ho:Lcom/miui/securityscan/ui/main/BallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, p1, v2

    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    sub-float/2addr v0, v2

    neg-float v0, v0

    return v0
.end method
