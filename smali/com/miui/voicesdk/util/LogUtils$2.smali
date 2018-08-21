.class Lcom/miui/voicesdk/util/LogUtils$2;
.super Ljava/lang/Object;
.source "LogUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/voicesdk/util/LogUtils;->logToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/voicesdk/util/LogUtils;

.field final synthetic val$level:Ljava/lang/String;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$tr:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/miui/voicesdk/util/LogUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/voicesdk/util/LogUtils$2;->this$0:Lcom/miui/voicesdk/util/LogUtils;

    iput-object p2, p0, Lcom/miui/voicesdk/util/LogUtils$2;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/voicesdk/util/LogUtils$2;->val$level:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/voicesdk/util/LogUtils$2;->val$msg:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/voicesdk/util/LogUtils$2;->val$tr:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/miui/voicesdk/util/LogUtils$2;->this$0:Lcom/miui/voicesdk/util/LogUtils;

    iget-object v1, p0, Lcom/miui/voicesdk/util/LogUtils$2;->val$tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/voicesdk/util/LogUtils$2;->val$level:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/voicesdk/util/LogUtils$2;->val$msg:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/voicesdk/util/LogUtils$2;->val$tr:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/voicesdk/util/LogUtils;->access$100(Lcom/miui/voicesdk/util/LogUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
