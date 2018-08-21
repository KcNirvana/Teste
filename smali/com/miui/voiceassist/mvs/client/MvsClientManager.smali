.class public Lcom/miui/voiceassist/mvs/client/MvsClientManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/voiceassist/mvs/client/MvsClientManager$MvsCallback;
    }
.end annotation


# static fields
.field public static final ACTION_3RD_LAUNCH:Ljava/lang/String; = "com.xiaomi.voiceassistant.action_3rd_launch"

.field public static final ACTION_MI_VOICE_SERVICE:Ljava/lang/String; = "com.miui.voiceassist.mvs.client.ACTION_MI_VOICE_SERVICE"

.field public static final ACTION_REGISTER_MVS:Ljava/lang/String; = "com.miui.voiceassist.mvs.client.ACTION_RESGISTER_MVS"

.field public static final EXTRA_3RD_FOOTER_ICON:Ljava/lang/String; = "extra_3rd_footer_icon"

.field public static final EXTRA_3RD_FOOTER_LABEL:Ljava/lang/String; = "extra_3rd_footer_label"

.field public static final EXTRA_3RD_PROMPT:Ljava/lang/String; = "extra_3rd_prompt"

.field public static final EXTRA_3RD_QUERIES:Ljava/lang/String; = "extra_3rd_queries"

.field public static final EXTRA_PKG:Ljava/lang/String; = "com.miui.voiceassist.mvs.client.EXTRA_PKG"

.field public static final EXTRA_REGISTER_TOKEN:Ljava/lang/String; = "EXTRA_REGISTER_TOKEN"

.field static final MVS_VERSION:I = 0x1

.field public static final PERMISSION_MVS_CLIENT:Ljava/lang/String; = "com.miui.voiceassist.MVS_BROADCAST"

.field private static final TAG:Ljava/lang/String; = "MvsClientManager"

.field static final VOICE_ASSIST_START_FROM_KEY:Ljava/lang/String; = "voice_assist_start_from_key"

.field private static sInstance:Lcom/miui/voiceassist/mvs/client/MvsClientManager;


# instance fields
.field private mMvsClientImpl:Lcom/miui/voiceassist/mvs/client/a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/voiceassist/mvs/client/a;

    invoke-direct {v0, p1}, Lcom/miui/voiceassist/mvs/client/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/voiceassist/mvs/client/MvsClientManager;->mMvsClientImpl:Lcom/miui/voiceassist/mvs/client/a;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/voiceassist/mvs/client/MvsClientManager;
    .locals 2

    const-class v1, Lcom/miui/voiceassist/mvs/client/MvsClientManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/voiceassist/mvs/client/MvsClientManager;->sInstance:Lcom/miui/voiceassist/mvs/client/MvsClientManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/voiceassist/mvs/client/MvsClientManager;

    invoke-direct {v0, p0}, Lcom/miui/voiceassist/mvs/client/MvsClientManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/voiceassist/mvs/client/MvsClientManager;->sInstance:Lcom/miui/voiceassist/mvs/client/MvsClientManager;

    :cond_0
    sget-object v0, Lcom/miui/voiceassist/mvs/client/MvsClientManager;->sInstance:Lcom/miui/voiceassist/mvs/client/MvsClientManager;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public abandonInteract()V
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/client/MvsClientManager;->mMvsClientImpl:Lcom/miui/voiceassist/mvs/client/a;

    invoke-virtual {v0}, Lcom/miui/voiceassist/mvs/client/a;->c()V

    return-void
.end method

.method public getAiClient()Lcom/miui/voiceassist/mvs/common/MvsAiState;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/client/MvsClientManager;->mMvsClientImpl:Lcom/miui/voiceassist/mvs/client/a;

    invoke-virtual {v0}, Lcom/miui/voiceassist/mvs/client/a;->e()Lcom/miui/voiceassist/mvs/common/MvsAiState;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/client/MvsClientManager;->mMvsClientImpl:Lcom/miui/voiceassist/mvs/client/a;

    invoke-virtual {v0}, Lcom/miui/voiceassist/mvs/client/a;->b()V

    return-void
.end method

.method registerMvsServiceCallbackAsync(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/client/MvsClientManager;->mMvsClientImpl:Lcom/miui/voiceassist/mvs/client/a;

    invoke-virtual {v0, p1}, Lcom/miui/voiceassist/mvs/client/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/client/MvsClientManager;->mMvsClientImpl:Lcom/miui/voiceassist/mvs/client/a;

    invoke-virtual {v0}, Lcom/miui/voiceassist/mvs/client/a;->d()V

    return-void
.end method

.method public sendRequest(Lcom/miui/voiceassist/mvs/common/MvsRequest;)Lcom/miui/voiceassist/mvs/common/MvsMsg;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/client/MvsClientManager;->mMvsClientImpl:Lcom/miui/voiceassist/mvs/client/a;

    invoke-virtual {v0, p1}, Lcom/miui/voiceassist/mvs/client/a;->a(Lcom/miui/voiceassist/mvs/common/MvsRequest;)Lcom/miui/voiceassist/mvs/common/MvsMsg;

    move-result-object v0

    return-object v0
.end method

.method public sendResult(Lcom/miui/voiceassist/mvs/common/MvsResult;)Lcom/miui/voiceassist/mvs/common/MvsMsg;
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/client/MvsClientManager;->mMvsClientImpl:Lcom/miui/voiceassist/mvs/client/a;

    invoke-virtual {v0, p1}, Lcom/miui/voiceassist/mvs/client/a;->a(Lcom/miui/voiceassist/mvs/common/MvsResult;)Lcom/miui/voiceassist/mvs/common/MvsMsg;

    move-result-object v0

    return-object v0
.end method

.method public setMvsCallback(Lcom/miui/voiceassist/mvs/client/MvsClientManager$MvsCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/client/MvsClientManager;->mMvsClientImpl:Lcom/miui/voiceassist/mvs/client/a;

    invoke-virtual {v0, p1}, Lcom/miui/voiceassist/mvs/client/a;->a(Lcom/miui/voiceassist/mvs/client/MvsClientManager$MvsCallback;)V

    return-void
.end method

.method public startXiaoAi()V
    .locals 1

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/client/MvsClientManager;->mMvsClientImpl:Lcom/miui/voiceassist/mvs/client/a;

    invoke-virtual {v0}, Lcom/miui/voiceassist/mvs/client/a;->a()V

    return-void
.end method

.method public startXiaoAi(Ljava/lang/String;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/client/MvsClientManager;->mMvsClientImpl:Lcom/miui/voiceassist/mvs/client/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/voiceassist/mvs/client/a;->a(Ljava/lang/String;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public startXiaoAi(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/client/MvsClientManager;->mMvsClientImpl:Lcom/miui/voiceassist/mvs/client/a;

    invoke-virtual {v0, p1}, Lcom/miui/voiceassist/mvs/client/a;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public startXiaoAi(Ljava/util/ArrayList;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/voiceassist/mvs/client/MvsClientManager;->mMvsClientImpl:Lcom/miui/voiceassist/mvs/client/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/voiceassist/mvs/client/a;->a(Ljava/util/ArrayList;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method
