.class Lcom/miui/video/base/database/VideoGreenDaoDbHelper$1;
.super Ljava/lang/Object;
.source "VideoGreenDaoDbHelper.java"

# interfaces
.implements Lcom/miui/video/base/database/GreenDaoUpdateHelper$CompatibleUpdateCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/base/database/VideoGreenDaoDbHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/base/database/VideoGreenDaoDbHelper;


# direct methods
.method constructor <init>(Lcom/miui/video/base/database/VideoGreenDaoDbHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/database/VideoGreenDaoDbHelper$1;->this$0:Lcom/miui/video/base/database/VideoGreenDaoDbHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "VideoGreenDaoDbHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5347\u7ea7\u5931\u8d25\u65e5\u5fd7 ===> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFinalSuccess()V
    .locals 2

    const-string v0, "VideoGreenDaoDbHelper"

    const-string v1, "\u8fdb\u884c\u6570\u636e\u5e93\u5347\u7ea7 ===> \u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
