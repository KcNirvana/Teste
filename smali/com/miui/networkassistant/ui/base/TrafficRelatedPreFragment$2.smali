.class final Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment$2;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment$2;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->-wrap0(Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "%s-%s"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment$2;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->-wrap1(Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v2, v3

    iget-object v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment$2;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment$2;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;

    iget v0, v0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    if-nez v0, :cond_1

    const v0, 0x7f0702fa

    :goto_0
    invoke-virtual {v3, v0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment$2;->this$0:Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->-wrap2(Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;Ljava/lang/String;)V

    return-void

    :cond_1
    const v0, 0x7f0702fb

    goto :goto_0
.end method
