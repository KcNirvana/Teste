.class public Lcom/miui/home/launcher/assistant/util/PriorityThreadFactory;
.super Ljava/lang/Object;
.source "PriorityThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mPriority:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/assistant/util/PriorityThreadFactory;->mPriority:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/util/PriorityThreadFactory;)I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/util/PriorityThreadFactory;->mPriority:I

    return v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/assistant/util/PriorityThreadFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/assistant/util/PriorityThreadFactory$1;-><init>(Lcom/miui/home/launcher/assistant/util/PriorityThreadFactory;Ljava/lang/Runnable;)V

    return-object v0
.end method
