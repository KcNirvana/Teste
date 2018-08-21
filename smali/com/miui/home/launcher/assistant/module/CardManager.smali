.class public Lcom/miui/home/launcher/assistant/module/CardManager;
.super Ljava/lang/Object;
.source "CardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/module/CardManager$CARD_SOURCE_ID;
    }
.end annotation


# static fields
.field private static CARD_SOURCE_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/assistant/module/CardSource;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CardManager"

.field public static final sIsKK:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/miui/home/launcher/assistant/module/CardManager;->sIsKK:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/CardManager;->CARD_SOURCE_LIST:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/home/launcher/assistant/module/CardManager$CARD_SOURCE_ID;->FUNCTION:Lcom/miui/home/launcher/assistant/module/CardManager$CARD_SOURCE_ID;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/CardManager$CARD_SOURCE_ID;->ordinal()I

    move-result v0

    const v3, 0x1b040053

    const-class v4, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;

    const-string/jumbo v5, "key_shortcut"

    invoke-static {v0, v3, v4, v5, v1}, Lcom/miui/home/launcher/assistant/module/CardManager;->addSource(IILjava/lang/Class;Ljava/lang/String;Z)V

    sget-object v0, Lcom/miui/home/launcher/assistant/module/CardManager$CARD_SOURCE_ID;->NOTEBOARD:Lcom/miui/home/launcher/assistant/module/CardManager$CARD_SOURCE_ID;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/CardManager$CARD_SOURCE_ID;->ordinal()I

    move-result v0

    const v3, 0x1b040060

    const-class v4, Lcom/miui/home/launcher/assistant/ui/view/NoteboardCardView;

    const-string/jumbo v5, "key_noteboard"

    invoke-static {v0, v3, v4, v5, v2}, Lcom/miui/home/launcher/assistant/module/CardManager;->addSource(IILjava/lang/Class;Ljava/lang/String;Z)V

    sget-object v0, Lcom/miui/home/launcher/assistant/module/CardManager$CARD_SOURCE_ID;->SPORT:Lcom/miui/home/launcher/assistant/module/CardManager$CARD_SOURCE_ID;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/CardManager$CARD_SOURCE_ID;->ordinal()I

    move-result v0

    const v2, 0x1b040067

    const-class v3, Lcom/miui/home/launcher/assistant/ui/view/SportCardView;

    const-string/jumbo v4, "key_step"

    invoke-static {v0, v2, v3, v4, v1}, Lcom/miui/home/launcher/assistant/module/CardManager;->addSource(IILjava/lang/Class;Ljava/lang/String;Z)V

    sget-object v0, Lcom/miui/home/launcher/assistant/module/CardManager$CARD_SOURCE_ID;->AGENDA_ASSISTANT:Lcom/miui/home/launcher/assistant/module/CardManager$CARD_SOURCE_ID;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/CardManager$CARD_SOURCE_ID;->ordinal()I

    move-result v0

    const v2, 0x1b04003a

    const-class v3, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;

    const-string/jumbo v4, "key_agenda_assistant"

    invoke-static {v0, v2, v3, v4, v1}, Lcom/miui/home/launcher/assistant/module/CardManager;->addSource(IILjava/lang/Class;Ljava/lang/String;Z)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(ILcom/miui/home/launcher/assistant/module/CardSource;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/assistant/module/CardManager;->addSource(ILcom/miui/home/launcher/assistant/module/CardSource;)V

    return-void
.end method

.method public static addCardSource(ILcom/miui/home/launcher/assistant/module/CardSource;)V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/module/CardManager$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/assistant/module/CardManager$1;-><init>(ILcom/miui/home/launcher/assistant/module/CardSource;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/miui/home/launcher/assistant/module/CardManager;->addSource(ILcom/miui/home/launcher/assistant/module/CardSource;)V

    goto :goto_0
.end method

.method private static addSource(IILjava/lang/Class;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    new-instance v0, Lcom/miui/home/launcher/assistant/module/CardSource;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/assistant/module/CardSource;-><init>(IILjava/lang/Class;Ljava/lang/String;Z)V

    sget-object v1, Lcom/miui/home/launcher/assistant/module/CardManager;->CARD_SOURCE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static addSource(ILcom/miui/home/launcher/assistant/module/CardSource;)V
    .locals 4

    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/assistant/module/CardManager;->CARD_SOURCE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1, p0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addSource e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getCardSize()I
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/assistant/module/CardManager;->CARD_SOURCE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static getCardSource(I)Lcom/miui/home/launcher/assistant/module/CardSource;
    .locals 1

    if-ltz p0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/assistant/module/CardManager;->CARD_SOURCE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/assistant/module/CardManager;->CARD_SOURCE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/module/CardSource;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCardViewTypes()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sget-object v2, Lcom/miui/home/launcher/assistant/module/CardManager;->CARD_SOURCE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/module/CardSource;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/CardSource;->getResId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static hasSource(Lcom/miui/home/launcher/assistant/module/CardSource;)Z
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/assistant/module/CardManager;->CARD_SOURCE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static registerCardReceiver(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->registerReceiver(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->registerReceiver()V

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->registerReceiver()V

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/module/receiver/BookAssistantReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/BookAssistantReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/receiver/BookAssistantReceiver;->registerReceiver()V

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->registerReceiver()V

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;->registerReceiver()V

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->registerReceiver()V

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/module/receiver/AiStateReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/AiStateReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/receiver/AiStateReceiver;->registerReceiver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerCardReceiver e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static unRegisterCardReceiver(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->unRegisterReceiver(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->unRegisterReceiver()V

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->unRegisterReceiver()V

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/module/receiver/BookAssistantReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/BookAssistantReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/receiver/BookAssistantReceiver;->unRegisterReceiver()V

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->unregisterReceiver()V

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/receiver/ExpressReceiver;->unregisterReceiver()V

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->unRegisterReceiver()V

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/module/receiver/AiStateReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/AiStateReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/receiver/AiStateReceiver;->unRegisterReceiver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unRegisterCardReceiver e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
