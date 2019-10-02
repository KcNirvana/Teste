.class Lcom/miui/video/base/database/CLVDatabase$5;
.super Ljava/lang/Object;
.source "CLVDatabase.java"

# interfaces
.implements Lcom/miui/video/base/database/DBUtils$ITransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/base/database/CLVDatabase;->deleteHistory(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/video/base/database/DBUtils$ITransactionListener<",
        "Lcom/miui/video/base/database/LocalVideoEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/base/database/CLVDatabase;


# direct methods
.method constructor <init>(Lcom/miui/video/base/database/CLVDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/CLVDatabase$5;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransaction(Lcom/miui/video/base/database/TableEntity;Lcom/miui/video/base/database/LocalVideoEntity;I)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/miui/video/base/database/CLVDatabase$5;->this$0:Lcom/miui/video/base/database/CLVDatabase;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "md5_path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/video/base/database/LocalVideoEntity;->getMd5Path()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/base/database/TableEntity;->setWhereClause(Ljava/lang/String;)Lcom/miui/video/base/database/TableEntity;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/miui/video/base/database/CLVDatabase;->delete(Lcom/miui/video/base/database/TableEntity;)J

    return-void
.end method

.method public bridge synthetic onTransaction(Lcom/miui/video/base/database/TableEntity;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/video/base/database/CLVDatabase$5;->onTransaction(Lcom/miui/video/base/database/TableEntity;Lcom/miui/video/base/database/LocalVideoEntity;I)V

    return-void
.end method
