.class final Lcom/miui/luckymoney/ui/activity/GuideActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/GuideActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/GuideActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/GuideActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/GuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/GuideActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/GuideActivity;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/ui/activity/GuideActivity;->setResult(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordGuidePage(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/GuideActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/GuideActivity;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/activity/GuideActivity;->finish()V

    return-void
.end method
