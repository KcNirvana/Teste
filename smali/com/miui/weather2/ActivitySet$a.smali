.class Lcom/miui/weather2/ActivitySet$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/weather2/model/m$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/ActivitySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivitySet;


# direct methods
.method private constructor <init>(Lcom/miui/weather2/ActivitySet;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ActivitySet$a;->a:Lcom/miui/weather2/ActivitySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/weather2/ActivitySet;Lcom/miui/weather2/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/ActivitySet$a;-><init>(Lcom/miui/weather2/ActivitySet;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/ActivitySet$a;->a:Lcom/miui/weather2/ActivitySet;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySet;->b(Lcom/miui/weather2/ActivitySet;)Lcom/miui/weather2/model/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/ActivitySet$a;->a:Lcom/miui/weather2/ActivitySet;

    invoke-static {v1}, Lcom/miui/weather2/ActivitySet;->a(Lcom/miui/weather2/ActivitySet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/model/a;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivitySet$a;->a:Lcom/miui/weather2/ActivitySet;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySet;->b(Lcom/miui/weather2/ActivitySet;)Lcom/miui/weather2/model/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/weather2/model/a;->b(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivitySet$a;->a:Lcom/miui/weather2/ActivitySet;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySet;->b(Lcom/miui/weather2/ActivitySet;)Lcom/miui/weather2/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/model/a;->notifyDataSetChanged()V

    return-void
.end method
