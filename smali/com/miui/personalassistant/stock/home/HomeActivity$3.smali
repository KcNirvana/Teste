.class Lcom/miui/personalassistant/stock/home/HomeActivity$3;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/miui/personalassistant/request/core/IDataStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/stock/home/HomeActivity;->setupUserId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/stock/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/stock/home/HomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/stock/home/HomeActivity$3;->this$0:Lcom/miui/personalassistant/stock/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheGot(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "HomeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCacheGot..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity$3;->this$0:Lcom/miui/personalassistant/stock/home/HomeActivity;

    invoke-static {v0, p1}, Lcom/miui/personalassistant/stock/home/HomeActivity;->access$300(Lcom/miui/personalassistant/stock/home/HomeActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onDataStatusChanged(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "HomeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataStatusChanged response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/HomeActivity$3;->this$0:Lcom/miui/personalassistant/stock/home/HomeActivity;

    invoke-static {v0, p1}, Lcom/miui/personalassistant/stock/home/HomeActivity;->access$300(Lcom/miui/personalassistant/stock/home/HomeActivity;Ljava/lang/String;)V

    return-void
.end method
