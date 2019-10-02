.class final Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlrpc/common/TypeConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backConvert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    check-cast p1, Ljava/util/Map;

    invoke-direct {v0, p1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public isConvertable(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_1

    instance-of p1, p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
