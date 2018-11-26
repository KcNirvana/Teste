.class Lcom/miui/common/a/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private azi:Lcom/miui/common/a/a/b;

.field private azj:Ljava/lang/ref/WeakReference;

.field private azk:Z


# direct methods
.method private constructor <init>(Lcom/miui/common/a/a/b;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/common/a/a/c;->azj:Ljava/lang/ref/WeakReference;

    :goto_0
    iput-boolean p2, p0, Lcom/miui/common/a/a/c;->azk:Z

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/common/a/a/c;->azi:Lcom/miui/common/a/a/b;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/miui/common/a/a/b;ZLcom/miui/common/a/a/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/common/a/a/c;-><init>(Lcom/miui/common/a/a/b;Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/a/a/c;->azi:Lcom/miui/common/a/a/b;

    iget-boolean v1, p0, Lcom/miui/common/a/a/c;->azk:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/common/a/a/c;->azj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/a/a/b;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/miui/common/a/a/b;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    return-void
.end method
