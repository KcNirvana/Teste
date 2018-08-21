.class Lcom/miui/voicesdk/util/LogUtils$1;
.super Ljava/lang/Object;
.source "LogUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/voicesdk/util/LogUtils;->setDebugable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/voicesdk/util/LogUtils;


# direct methods
.method constructor <init>(Lcom/miui/voicesdk/util/LogUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/voicesdk/util/LogUtils$1;->this$0:Lcom/miui/voicesdk/util/LogUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/voicesdk/util/LogUtils$1;->this$0:Lcom/miui/voicesdk/util/LogUtils;

    invoke-static {v0}, Lcom/miui/voicesdk/util/LogUtils;->access$000(Lcom/miui/voicesdk/util/LogUtils;)V

    return-void
.end method
