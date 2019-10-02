.class Lcom/hungama/apps/ha/events/d$1;
.super Lcom/hungama/apps/ha/a/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hungama/apps/ha/events/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hungama/apps/ha/events/d;


# direct methods
.method constructor <init>(Lcom/hungama/apps/ha/events/d;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/apps/ha/events/d$1;->a:Lcom/hungama/apps/ha/events/d;

    invoke-direct {p0}, Lcom/hungama/apps/ha/a/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hungama/apps/ha/events/d$1;->a:Lcom/hungama/apps/ha/events/d;

    invoke-static {v0, p1}, Lcom/hungama/apps/ha/events/d;->a(Lcom/hungama/apps/ha/events/d;Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method
