.class public Lcom/kaltura/playkit/plugins/SamplePlugin;
.super Lcom/kaltura/playkit/PKPlugin;
.source "SamplePlugin.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SamplePlugin"

.field public static final factory:Lcom/kaltura/playkit/PKPlugin$Factory;

.field private static final log:Lcom/kaltura/playkit/PKLog;


# instance fields
.field private context:Landroid/content/Context;

.field private delay:I

.field private player:Lcom/kaltura/playkit/Player;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SamplePlugin"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/plugins/SamplePlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v0, Lcom/kaltura/playkit/plugins/SamplePlugin$1;

    invoke-direct {v0}, Lcom/kaltura/playkit/plugins/SamplePlugin$1;-><init>()V

    sput-object v0, Lcom/kaltura/playkit/plugins/SamplePlugin;->factory:Lcom/kaltura/playkit/PKPlugin$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/PKPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/kaltura/playkit/PKLog;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/plugins/SamplePlugin;->log:Lcom/kaltura/playkit/PKLog;

    return-object v0
.end method


# virtual methods
.method protected getPlayerDecorator()Lcom/kaltura/playkit/PlayerDecorator;
    .locals 1

    new-instance v0, Lcom/kaltura/playkit/plugins/SamplePlugin$3;

    invoke-direct {v0, p0}, Lcom/kaltura/playkit/plugins/SamplePlugin$3;-><init>(Lcom/kaltura/playkit/plugins/SamplePlugin;)V

    return-object v0
.end method

.method protected onApplicationPaused()V
    .locals 0

    return-void
.end method

.method protected onApplicationResumed()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method protected onLoad(Lcom/kaltura/playkit/Player;Ljava/lang/Object;Lcom/kaltura/playkit/MessageBus;Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/plugins/SamplePlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Loading"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->i(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/SamplePlugin;->player:Lcom/kaltura/playkit/Player;

    iput-object p4, p0, Lcom/kaltura/playkit/plugins/SamplePlugin;->context:Landroid/content/Context;

    check-cast p2, Lcom/google/gson/JsonObject;

    const-string p1, "delay"

    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsInt()I

    move-result p1

    iput p1, p0, Lcom/kaltura/playkit/plugins/SamplePlugin;->delay:I

    sget-object p1, Lcom/kaltura/playkit/plugins/SamplePlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "delay="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/kaltura/playkit/plugins/SamplePlugin;->delay:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kaltura/playkit/PKLog;->v(Ljava/lang/String;)V

    new-instance p1, Lcom/kaltura/playkit/plugins/SamplePlugin$2;

    invoke-direct {p1, p0}, Lcom/kaltura/playkit/plugins/SamplePlugin$2;-><init>(Lcom/kaltura/playkit/plugins/SamplePlugin;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Enum;

    invoke-virtual {p3, p1, p2}, Lcom/kaltura/playkit/MessageBus;->listen(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    return-void
.end method

.method protected onUpdateConfig(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected onUpdateMedia(Lcom/kaltura/playkit/PKMediaConfig;)V
    .locals 0

    return-void
.end method
