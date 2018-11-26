.class final Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$2;
.super Ljava/util/HashMap;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$2;->this$0:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "com.tencent.av.ui.VideoInviteLock"

    const-string/jumbo v1, "QQ\u8bed\u97f3"

    invoke-virtual {p0, v0, v1}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "com.tencent.av.ui.VideoInviteFull"

    const-string/jumbo v1, "QQ\u7535\u8bdd"

    invoke-virtual {p0, v0, v1}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    const-string/jumbo v1, "\u5fae\u4fe1\u7535\u8bdd"

    invoke-virtual {p0, v0, v1}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
