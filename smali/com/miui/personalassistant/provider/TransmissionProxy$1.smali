.class Lcom/miui/personalassistant/provider/TransmissionProxy$1;
.super Ljava/lang/Object;
.source "TransmissionProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/provider/TransmissionProxy;->onQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/provider/TransmissionProxy;

.field final synthetic val$s2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/provider/TransmissionProxy;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/provider/TransmissionProxy$1;->this$0:Lcom/miui/personalassistant/provider/TransmissionProxy;

    iput-object p2, p0, Lcom/miui/personalassistant/provider/TransmissionProxy$1;->val$s2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/provider/TransmissionProxy$1;->val$s2:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
