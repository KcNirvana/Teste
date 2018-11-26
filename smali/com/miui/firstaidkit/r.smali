.class final Lcom/miui/firstaidkit/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/common/customview/b;


# instance fields
.field final synthetic vD:Lcom/miui/firstaidkit/FirstAidKitActivity;


# direct methods
.method constructor <init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/r;->vD:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ei(F)V
    .locals 2

    iget-object v0, p0, Lcom/miui/firstaidkit/r;->vD:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wy(Lcom/miui/firstaidkit/FirstAidKitActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const v0, -0x40666666    # -1.2f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/firstaidkit/r;->vD:Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-static {v1}, Lcom/miui/firstaidkit/FirstAidKitActivity;->wC(Lcom/miui/firstaidkit/FirstAidKitActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method
