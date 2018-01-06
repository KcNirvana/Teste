.class public Lcom/miui/weather2/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/miui/weather2/c/d;


# instance fields
.field private b:Lcom/miui/weather2/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/weather2/c/d;->a:Lcom/miui/weather2/c/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/miui/weather2/c/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/miui/weather2/c/d;
    .locals 1

    new-instance v0, Lcom/miui/weather2/c/d;

    invoke-direct {v0, p0}, Lcom/miui/weather2/c/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/weather2/c/d;->a:Lcom/miui/weather2/c/d;

    sget-object v0, Lcom/miui/weather2/c/d;->a:Lcom/miui/weather2/c/d;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/a/a/q;

    invoke-direct {v0}, Lcom/a/a/q;-><init>()V

    invoke-virtual {v0}, Lcom/a/a/q;->b()Lcom/a/a/k;

    move-result-object v0

    new-instance v1, Lretrofit/RestAdapter$Builder;

    invoke-direct {v1}, Lretrofit/RestAdapter$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v1

    new-instance v2, Lretrofit/converter/GsonConverter;

    invoke-direct {v2, v0}, Lretrofit/converter/GsonConverter;-><init>(Lcom/a/a/k;)V

    invoke-virtual {v1, v2}, Lretrofit/RestAdapter$Builder;->setConverter(Lretrofit/converter/Converter;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    const-class v1, Lcom/miui/weather2/c/a;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/c/a;

    iput-object v0, p0, Lcom/miui/weather2/c/d;->b:Lcom/miui/weather2/c/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/weather2/model/ai;Lretrofit/Callback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/weather2/model/ai;",
            "Lretrofit/Callback",
            "<",
            "Lcom/miui/weather2/structures/Status;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/c/d;->b:Lcom/miui/weather2/c/a;

    invoke-virtual {p1}, Lcom/miui/weather2/model/ai;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/weather2/model/ai;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/weather2/model/ai;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/weather2/model/ai;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/miui/weather2/model/ai;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/weather2/model/ai;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/miui/weather2/model/ai;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/miui/weather2/model/ai;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/miui/weather2/model/ai;->i()Ljava/lang/String;

    move-result-object v9

    move-object v10, p2

    invoke-interface/range {v0 .. v10}, Lcom/miui/weather2/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    return-void
.end method

.method public a(Lcom/miui/weather2/model/q;Lretrofit/Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/weather2/model/q;",
            "Lretrofit/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/c/d;->b:Lcom/miui/weather2/c/a;

    invoke-virtual {p1}, Lcom/miui/weather2/model/q;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2882303761517405989"

    const-string v3, "5191740546989"

    invoke-virtual {p1}, Lcom/miui/weather2/model/q;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/miui/weather2/model/q;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/weather2/model/q;->d()Ljava/lang/String;

    move-result-object v6

    move-object v7, p2

    invoke-interface/range {v0 .. v7}, Lcom/miui/weather2/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/miui/weather2/structures/InfoBean;",
            ">;)V"
        }
    .end annotation

    invoke-static/range {p16 .. p16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static/range {p17 .. p17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/weather2/c/d;->b:Lcom/miui/weather2/c/a;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p18

    invoke-interface/range {v1 .. v17}, Lcom/miui/weather2/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/weather2/c/d;->b:Lcom/miui/weather2/c/a;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    invoke-interface/range {v1 .. v19}, Lcom/miui/weather2/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lretrofit/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set;",
            "Lretrofit/Callback",
            "<",
            "Lcom/miui/weather2/structures/Status;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/c/d;->b:Lcom/miui/weather2/c/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/miui/weather2/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lretrofit/Callback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lretrofit/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/miui/weather2/structures/Ips;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/c/d;->b:Lcom/miui/weather2/c/a;

    invoke-interface {v0, p1, p2}, Lcom/miui/weather2/c/a;->a(Ljava/lang/String;Lretrofit/Callback;)V

    return-void
.end method

.method public a(Ljava/util/Map;Lretrofit/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lcom/miui/weather2/structures/DailyForecastAdData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/c/d;->b:Lcom/miui/weather2/c/a;

    invoke-interface {v0, p1, p2}, Lcom/miui/weather2/c/a;->a(Ljava/util/Map;Lretrofit/Callback;)V

    return-void
.end method
