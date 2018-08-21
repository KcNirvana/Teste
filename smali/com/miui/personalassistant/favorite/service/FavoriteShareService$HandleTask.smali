.class Lcom/miui/personalassistant/favorite/service/FavoriteShareService$HandleTask;
.super Ljava/util/TimerTask;
.source "FavoriteShareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/favorite/service/FavoriteShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleTask"
.end annotation


# instance fields
.field private bundle:Landroid/os/Bundle;

.field public volatile isNotified:Z

.field final synthetic this$0:Lcom/miui/personalassistant/favorite/service/FavoriteShareService;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/favorite/service/FavoriteShareService;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService$HandleTask;->this$0:Lcom/miui/personalassistant/favorite/service/FavoriteShareService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p2, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService$HandleTask;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService$HandleTask;->isNotified:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "FavoriteShareService"

    const-string/jumbo v1, "native data handle"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService$HandleTask;->isNotified:Z

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService$HandleTask;->this$0:Lcom/miui/personalassistant/favorite/service/FavoriteShareService;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService$HandleTask;->bundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->access$200(Lcom/miui/personalassistant/favorite/service/FavoriteShareService;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
