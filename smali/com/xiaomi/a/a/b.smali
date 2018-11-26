.class public Lcom/xiaomi/a/a/b;
.super Lcom/xiaomi/a/a/h;
.source ""


# static fields
.field private static bpo:Ljava/lang/String;


# instance fields
.field private bpn:Ljava/util/List;

.field private mPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)"

    sput-object v0, Lcom/xiaomi/a/a/b;->bpo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/a/a/h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/a/a/b;->bpn:Ljava/util/List;

    sget-object v0, Lcom/xiaomi/a/a/b;->bpo:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/a/a/b;->mPattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public bNj(Lcom/xiaomi/a/j;[II)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/a/a/b;->bpn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    aget v0, p2, p3

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, p3

    const/4 v0, 0x1

    return v0
.end method

.method protected bNk(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/a/a/b;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    if-gt v4, v0, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/xiaomi/a/a/b;->bpn:Ljava/util/List;

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    :goto_2
    return-object v3

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected reset()V
    .locals 1

    invoke-super {p0}, Lcom/xiaomi/a/a/h;->reset()V

    iget-object v0, p0, Lcom/xiaomi/a/a/b;->bpn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
