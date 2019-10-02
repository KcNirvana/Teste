.class final Lcom/hungama/apps/ha/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hungama/apps/ha/e/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hungama/apps/ha/b/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/hungama/apps/ha/e/d;


# direct methods
.method constructor <init>(Lcom/hungama/apps/ha/e/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/hungama/apps/ha/b/d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/hungama/apps/ha/b/d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/hungama/apps/ha/b/d;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/hungama/apps/ha/b/d;->e:Lcom/hungama/apps/ha/e/d;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x3e9

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/hungama/apps/ha/b/d;->c:Ljava/lang/String;

    const-string v1, "/device"

    invoke-static {v0, v1}, Lcom/hungama/apps/ha/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/hungama/apps/ha/e/i;
    .locals 1

    sget-object v0, Lcom/hungama/apps/ha/e/i;->b:Lcom/hungama/apps/ha/e/i;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/hungama/apps/ha/d/b;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hungama/apps/ha/b/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/hungama/apps/ha/e/b;
    .locals 4

    new-instance v0, Lcom/hungama/apps/ha/b/d$a;

    iget-object v1, p0, Lcom/hungama/apps/ha/b/d;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/hungama/apps/ha/b/d;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/hungama/apps/ha/b/d$a;-><init>(Lcom/hungama/apps/ha/b/d;Ljava/lang/String;Ljava/lang/String;Lcom/hungama/apps/ha/b/d$1;)V

    return-object v0
.end method

.method public h()Lcom/hungama/apps/ha/e/d;
    .locals 1

    iget-object v0, p0, Lcom/hungama/apps/ha/b/d;->e:Lcom/hungama/apps/ha/e/d;

    return-object v0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hungama/apps/ha/b/d;->e:Lcom/hungama/apps/ha/e/d;

    return-void
.end method
