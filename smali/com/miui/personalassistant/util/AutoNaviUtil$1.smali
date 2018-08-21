.class Lcom/miui/personalassistant/util/AutoNaviUtil$1;
.super Ljava/lang/Object;
.source "AutoNaviUtil.java"

# interfaces
.implements Lcom/miui/personalassistant/util/MapHelper$AddressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/util/AutoNaviUtil;->getEtaLineInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/util/AutoNaviUtil;

.field final synthetic val$endAddress:Ljava/lang/String;

.field final synthetic val$endLat:Ljava/lang/String;

.field final synthetic val$endLong:Ljava/lang/String;

.field final synthetic val$startLat:Ljava/lang/String;

.field final synthetic val$startLong:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/util/AutoNaviUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$1;->this$0:Lcom/miui/personalassistant/util/AutoNaviUtil;

    iput-object p2, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$1;->val$startLong:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$1;->val$startLat:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$1;->val$endLong:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$1;->val$endLat:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$1;->val$endAddress:Ljava/lang/String;

    iput-object p7, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$1;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$1;->this$0:Lcom/miui/personalassistant/util/AutoNaviUtil;

    invoke-virtual {v0}, Lcom/miui/personalassistant/util/AutoNaviUtil;->sendQuiteMsg()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$1;->this$0:Lcom/miui/personalassistant/util/AutoNaviUtil;

    invoke-static {v0, p2}, Lcom/miui/personalassistant/util/AutoNaviUtil;->access$002(Lcom/miui/personalassistant/util/AutoNaviUtil;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$1;->this$0:Lcom/miui/personalassistant/util/AutoNaviUtil;

    invoke-static {v0, p1}, Lcom/miui/personalassistant/util/AutoNaviUtil;->access$102(Lcom/miui/personalassistant/util/AutoNaviUtil;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$1;->this$0:Lcom/miui/personalassistant/util/AutoNaviUtil;

    iget-object v1, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$1;->val$startLong:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$1;->val$startLat:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$1;->val$endLong:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$1;->val$endLat:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$1;->val$endAddress:Ljava/lang/String;

    iget-object v7, p0, Lcom/miui/personalassistant/util/AutoNaviUtil$1;->val$type:Ljava/lang/String;

    move-object v3, p2

    invoke-static/range {v0 .. v7}, Lcom/miui/personalassistant/util/AutoNaviUtil;->access$200(Lcom/miui/personalassistant/util/AutoNaviUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
