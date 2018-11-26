.class public Lcom/miui/optimizemanage/b/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public active:Z

.field public name:Ljava/lang/String;

.field public final pid:I

.field public final uid:I

.field public yP:Z

.field public yQ:Ljava/lang/String;

.field public yR:J

.field public yS:J

.field public yT:J

.field public yU:J

.field public yV:J

.field final yW:Ljava/lang/String;

.field public yX:Z

.field public yY:I

.field public yZ:I

.field public za:I

.field public zb:I

.field public zc:J

.field public zd:I

.field public ze:Z

.field public zf:J

.field final zg:Ljava/lang/String;

.field final zh:Ljava/util/ArrayList;

.field final zi:Ljava/lang/String;

.field public zj:J

.field public zk:Z

.field final zl:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(IIZ)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/optimizemanage/b/b;->pid:I

    if-gez p2, :cond_1

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/proc"

    iget v2, p0, Lcom/miui/optimizemanage/b/b;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "stat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/optimizemanage/b/b;->zg:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "cmdline"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/optimizemanage/b/b;->yW:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "task"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/b/b;->zi:Ljava/lang/String;

    if-eqz p3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizemanage/b/b;->zh:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizemanage/b/b;->zl:Ljava/util/ArrayList;

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/optimizemanage/b/b;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/optimizemanage/b/e;->Aq(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/b/b;->uid:I

    :goto_1
    return-void

    :cond_0
    iput-object v4, p0, Lcom/miui/optimizemanage/b/b;->zh:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/miui/optimizemanage/b/b;->zl:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/proc"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "task"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/optimizemanage/b/b;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "stat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/b/b;->zg:Ljava/lang/String;

    iput-object v4, p0, Lcom/miui/optimizemanage/b/b;->yW:Ljava/lang/String;

    iput-object v4, p0, Lcom/miui/optimizemanage/b/b;->zi:Ljava/lang/String;

    iput-object v4, p0, Lcom/miui/optimizemanage/b/b;->zh:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/miui/optimizemanage/b/b;->zl:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/optimizemanage/b/b;->zg:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/optimizemanage/b/e;->Ar(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/b/b;->uid:I

    goto :goto_1
.end method
