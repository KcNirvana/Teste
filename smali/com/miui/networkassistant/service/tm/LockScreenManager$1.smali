.class final Lcom/miui/networkassistant/service/tm/LockScreenManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/LockScreenManager;

.field final synthetic val$action:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/LockScreenManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager$1;->this$0:Lcom/miui/networkassistant/service/tm/LockScreenManager;

    iput-object p2, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager$1;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager$1;->this$0:Lcom/miui/networkassistant/service/tm/LockScreenManager;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/LockScreenManager$1;->val$action:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/service/tm/LockScreenManager;->-wrap0(Lcom/miui/networkassistant/service/tm/LockScreenManager;Ljava/lang/String;)V

    return-void
.end method
