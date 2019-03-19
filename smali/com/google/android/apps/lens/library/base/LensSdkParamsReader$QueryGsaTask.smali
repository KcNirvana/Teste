.class Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;
.super Landroid/os/AsyncTask;
.source "LensSdkParamsReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryGsaTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;-><init>(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 8

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    invoke-static {v0}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$100(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->LENS_AVAILABILITY_PROVIDER_URI:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v6, :cond_2

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v0, 0x6

    if-gt v7, v0, :cond_3

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v6, :cond_4

    :goto_2
    return-object v0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    const/4 v7, 0x6

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-nez v6, :cond_5

    :goto_3
    throw v0

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5

    const-string/jumbo v1, "LensSdkParamsReader"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Lens availability result:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    invoke-static {v1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$200(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensAvailabilityStatus:I

    iget-object v1, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$302(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;Z)Z

    iget-object v1, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    invoke-static {v1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$400(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    invoke-static {v1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$400(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$LensSdkParamsCallback;

    iget-object v2, p0, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->this$0:Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;

    invoke-static {v2}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;->access$200(Lcom/google/android/apps/lens/library/base/LensSdkParamsReader;)Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$LensSdkParamsCallback;->onLensSdkParamsAvailable(Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/lens/library/base/LensSdkParamsReader$QueryGsaTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
