.class public final Lcom/hungama/apps/ha/events/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hungama/apps/ha/b/f;


# instance fields
.field private a:Lcom/hungama/apps/ha/events/d;

.field private b:Lcom/hungama/apps/ha/events/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/hungama/apps/ha/events/c;

    invoke-direct {v0}, Lcom/hungama/apps/ha/events/c;-><init>()V

    iput-object v0, p0, Lcom/hungama/apps/ha/events/a;->b:Lcom/hungama/apps/ha/events/c;

    new-instance v0, Lcom/hungama/apps/ha/events/d;

    new-instance v1, Lcom/hungama/apps/ha/e/j;

    invoke-direct {v1, p1}, Lcom/hungama/apps/ha/e/j;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, p2}, Lcom/hungama/apps/ha/events/d;-><init>(Lcom/hungama/apps/ha/e/j;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hungama/apps/ha/events/a;->a:Lcom/hungama/apps/ha/events/d;

    iget-object p1, p0, Lcom/hungama/apps/ha/events/a;->a:Lcom/hungama/apps/ha/events/d;

    invoke-virtual {p1}, Lcom/hungama/apps/ha/events/d;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hungama/apps/ha/events/Event;Lcom/hungama/apps/ha/events/b;)V
    .locals 2

    iget-object v0, p0, Lcom/hungama/apps/ha/events/a;->b:Lcom/hungama/apps/ha/events/c;

    invoke-virtual {v0, p1, p2}, Lcom/hungama/apps/ha/events/c;->a(Lcom/hungama/apps/ha/events/Event;Lcom/hungama/apps/ha/events/b;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/hungama/apps/ha/events/a;->a:Lcom/hungama/apps/ha/events/d;

    invoke-virtual {p1}, Lcom/hungama/apps/ha/events/d;->a()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/hungama/apps/ha/events/a;->a:Lcom/hungama/apps/ha/events/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hungama/apps/ha/events/d;->a(Z)V

    iget-object v0, p0, Lcom/hungama/apps/ha/events/a;->a:Lcom/hungama/apps/ha/events/d;

    invoke-virtual {v0, p1}, Lcom/hungama/apps/ha/events/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hungama/apps/ha/events/a;->a:Lcom/hungama/apps/ha/events/d;

    invoke-virtual {v0, p1}, Lcom/hungama/apps/ha/events/d;->a(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hungama/apps/ha/events/a;->a:Lcom/hungama/apps/ha/events/d;

    invoke-virtual {v0, p1}, Lcom/hungama/apps/ha/events/d;->a(Ljava/lang/String;)V

    return-void
.end method
