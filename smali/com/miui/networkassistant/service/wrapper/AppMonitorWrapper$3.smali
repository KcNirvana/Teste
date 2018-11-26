.class final Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field final synthetic val$listener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$3;->this$0:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iput-object p2, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$3;->val$listener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$3;->val$listener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-interface {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;->onAppListUpdated()V

    return-void
.end method
