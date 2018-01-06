.class Lcom/miui/weather2/providers/WeatherProvider$b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/providers/WeatherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "weather.db"

    const/4 v1, 0x0

    const/16 v2, 0x13

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS raw"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS information"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS weather"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS aqiinfo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS alertinfo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS selectedcity"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS weatherappconfig"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS alertfilter"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS background"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE raw (insert_time VARCHAR(50) , city_id VARCHAR(50) PRIMARY KEY , locale VARCHAR(50) , data1 TEXT , minute_rain_data TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE information (city_id VARCHAR(50) PRIMARY KEY , insert_time VARCHAR(50) , data1 TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE weather (publish_time VARCHAR(50) , city_id VARCHAR(50) , city_name VARCHAR(50) , description VARCHAR(50) , temperature INTEGER , temperature_range VARCHAR(50) , aqilevel VARCHAR(50) , locale VARCHAR(50) , weather_type INTEGER , begins VARCHAR(50) , ends VARCHAR(50) , humidity VARCHAR(50) , sunrise VARCHAR(50) , sunset VARCHAR(50) , wind VARCHAR(50) , data1 TEXT ,day INTEGER , ebbTide VARCHAR(50) , _id VARCHAR(50) , pressure VARCHAR(50) , pressures VARCHAR(50) , risingTide VARCHAR(50) , timestamp VARCHARA(50) , tmphighs VARCHAR(50) , tmplows VARCHAR(50) , water VARCHAR(50) ,weathernamesfrom VARCHAR(50) , weathernamesto VARCHAR(50) , winds VARCHAR(50) , forecast_type VARCHAR(50) , primary key (city_id,day) )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE aqiinfo( _id VARCHAR(50) , city_id VARCHAR(50) PRIMARY KEY , city VARCHAR(50) , aqi VARCHAR(50) , pm25 VARCHAR(50) , pm10 VARCHAR(50) , so2 VARCHAR(50) , no2 VARCHAR(50) , pub_time VARCHAR(50) , src VARCHAR(50) , spot VARCHAR(50) , title TEXT , desc TEXT , co VARCHAR(50) , o3 VARCHAR(50) )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE alertinfo( _id VARCHAR(50) , city_id VARCHAR(50) , city VARCHAR(50) , alert VARCHAR(50) , pub_time VARCHAR(50) , level VARCHAR(50) , title VARCHAR(50) , icon_url VARCHAR(256) , detail TEXT , abnormal TEXT , holiday TEXT , type TEXT , reported INTEGER , seen INTEGER ,primary key (city_id,type) )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE selectedcity (posID VARCHAR(50) , flag INTEGER , position INTEGER ,name VARCHAR(50) ,street_name VARCHAR(256) ,longtitude VARCHAR(50) ,latitude VARCHAR(50) ,belongings VARCHAR(50) ,extra VARCHAR(50) ,locale VARCHAR(50) ,primary key (posID,flag) )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE weatherappconfig (locateswitch INTEGER , unit INTEGER  )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "insert into weatherappconfig values (1,1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE alertfilter (cityid VARCHAR(50))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE background (insert_time VARCHAR(50) , cityId VARCHAR(50) PRIMARY KEY , data TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/weather2/providers/WeatherProvider$b;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 11

    const/16 v9, 0xc

    const/16 v10, 0xb

    const/16 v1, 0xa

    const/16 v0, 0x9

    const/4 v8, 0x0

    if-ge p2, v0, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/weather2/providers/WeatherProvider$b;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p2, v0, :cond_11

    const-string v0, "CREATE TABLE weatherappconfig (locateswitch INTEGER , unit INTEGER  )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "insert into weatherappconfig values (1,1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v0, v1

    :goto_1
    if-ne v0, v1, :cond_6

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "selectedcity"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    :cond_2
    :goto_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/miui/weather2/structures/CityData;

    invoke-direct {v2}, Lcom/miui/weather2/structures/CityData;-><init>()V

    const-string v3, "posID"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/weather2/structures/CityData;->setCityId(Ljava/lang/String;)V

    const-string v3, "flag"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/weather2/structures/CityData;->setLocateFlag(I)V

    const-string v3, "position"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/weather2/structures/CityData;->setPosition(I)V

    invoke-virtual {v2}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1}, Lcom/miui/weather2/providers/WeatherProvider$b;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    const-string v1, "drop table selectedcity"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE selectedcity (posID VARCHAR(50) , flag INTEGER , position INTEGER ,name VARCHAR(50) ,street_name VARCHAR(256) ,longtitude VARCHAR(50) ,latitude VARCHAR(50) ,belongings VARCHAR(50) ,extra VARCHAR(50) ,locale VARCHAR(50) ,primary key (posID,flag) )"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "posID"

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "flag"

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getLocateFlag()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "position"

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "selectedcity"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_3

    :cond_5
    move v0, v10

    :cond_6
    if-ne v0, v10, :cond_9

    const-string v0, "drop table alertinfo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE alertinfo( _id VARCHAR(50) , city_id VARCHAR(50) , city VARCHAR(50) , alert VARCHAR(50) , pub_time VARCHAR(50) , level VARCHAR(50) , title VARCHAR(50) , icon_url VARCHAR(256) , detail TEXT , abnormal TEXT , holiday TEXT , type TEXT , reported INTEGER , seen INTEGER ,primary key (city_id,type) )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE alertfilter (cityid VARCHAR(50))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "flag = 1"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    const-string v1, "selectedcity"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_7

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert into alertfilter values (\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "posID"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_7
    if-eqz v1, :cond_8

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    move v0, v9

    :cond_9
    if-ne v0, v9, :cond_a

    const-string v0, "alter table weather add forecast_type VARCHAR(50) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0xd

    :cond_a
    const/16 v1, 0xd

    if-ne v0, v1, :cond_b

    const/16 v0, 0xe

    :cond_b
    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    const-string v0, "alter table selectedcity add latitude VARCHAR(50) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table selectedcity add longtitude VARCHAR(50) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table selectedcity add locale VARCHAR(50) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table selectedcity add extra VARCHAR(50) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table selectedcity add name VARCHAR(50) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "alter table selectedcity add belongings VARCHAR(50) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE background (insert_time VARCHAR(50) , cityId VARCHAR(50) PRIMARY KEY , data TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0xf

    :cond_c
    const/16 v1, 0xf

    if-ne v0, v1, :cond_d

    const-string v0, "alter table alertinfo add icon_url VARCHAR(256) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0x10

    :cond_d
    const/16 v1, 0x10

    if-ne v0, v1, :cond_e

    const-string v0, "alter table selectedcity add street_name VARCHAR(256) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0x11

    :cond_e
    const/16 v1, 0x11

    if-ne v0, v1, :cond_f

    const-string v0, "CREATE TABLE information (city_id VARCHAR(50) PRIMARY KEY , insert_time VARCHAR(50) , data1 TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0x12

    :cond_f
    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const-string v0, "alter table raw add minute_rain_data TEXT "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v8

    :goto_4
    if-eqz v1, :cond_10

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_11
    move v0, p2

    goto/16 :goto_1
.end method
