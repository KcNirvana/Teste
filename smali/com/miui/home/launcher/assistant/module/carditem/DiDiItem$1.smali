.class Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem$1;
.super Ljava/lang/Object;
.source "DiDiItem.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x1

    const-string/jumbo v2, "DiDiItem"

    const-string/jumbo v3, "current:  lat:%s  long:%s  "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object p2, v4, v9

    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->updateCurrentLocation(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->access$000(Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->access$100(Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->access$200(Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->access$300(Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "didi_biz_key"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/home/launcher/assistant/util/Preference;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v7

    if-eq v7, v9, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://personal_assistant/miui.home.launcher.assistant.didi?fromlat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&fromlng="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&tolat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->access$000(Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&tolng="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->access$200(Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&toname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->access$400(Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&toaddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->access$500(Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&tolatCompany="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->access$100(Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&tolngCompany="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->access$300(Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&tonameCompany="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->access$600(Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&toaddressCompany="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->access$700(Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&biz="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&maptype="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "soso"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/module/carditem/DiDiItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v2, "DiDiItem"

    const-string/jumbo v3, "IllegalStateException"

    invoke-static {v2, v3, v8}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v8

    :try_start_2
    const-string/jumbo v2, "DiDiItem"

    const-string/jumbo v3, "RemoteException"

    invoke-static {v2, v3, v8}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v8

    const-string/jumbo v2, "DiDiItem"

    const-string/jumbo v3, "IllegalStateException"

    invoke-static {v2, v3, v8}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    throw v2

    :catch_3
    move-exception v8

    const-string/jumbo v3, "DiDiItem"

    const-string/jumbo v4, "IllegalStateException"

    invoke-static {v3, v4, v8}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getEtaInfo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
