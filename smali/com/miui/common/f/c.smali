.class Lcom/miui/common/f/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field aBV:Ljava/lang/String;

.field aBW:I

.field aBX:Lcom/miui/common/f/d;

.field aBY:Landroid/os/IBinder;

.field aBZ:Ljava/lang/Object;

.field aCa:Z

.field final synthetic aCb:Lcom/miui/common/f/a;

.field action:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/common/f/a;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/miui/common/f/c;->aCb:Lcom/miui/common/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/miui/common/f/c;->aCa:Z

    iput v0, p0, Lcom/miui/common/f/c;->aBW:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/common/f/c;->aBZ:Ljava/lang/Object;

    return-void
.end method
