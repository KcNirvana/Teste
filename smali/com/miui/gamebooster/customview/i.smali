.class final Lcom/miui/gamebooster/customview/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic hW:Lcom/miui/gamebooster/customview/InCallNotificationView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/customview/InCallNotificationView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/i;->hW:Lcom/miui/gamebooster/customview/InCallNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/i;->hW:Lcom/miui/gamebooster/customview/InCallNotificationView;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/InCallNotificationView;->jY(Lcom/miui/gamebooster/customview/InCallNotificationView;)Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rL(Z)V

    return-void
.end method
