.class final Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

.field final synthetic val$conn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$2;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    iput-object p2, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$2;->val$conn:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$2;->val$conn:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$2;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-static {v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->-get2(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher$2;->this$0:Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    invoke-static {v2}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->-get0(Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method
