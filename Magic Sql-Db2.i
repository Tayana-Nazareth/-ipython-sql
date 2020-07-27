{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "metadata": {},
   "outputs": [],
   "source": [
    "import sys,os,os.path\n",
    "import ibm_db\n",
    "import ibm_db_sa\n",
    "import ibm_db_dbi\n",
    "import sqlalchemy"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "metadata": {
    "scrolled": true
   },
   "outputs": [],
   "source": [
    "%load_ext sql"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "metadata": {},
   "outputs": [],
   "source": [
    "from sqlalchemy import create_engine\n",
    "engine = create_engine('postgresql+psycopg2://user:password@hostname/database_name')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "metadata": {},
   "outputs": [],
   "source": [
    "import sqlalchemy.dialects.sqlite\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "metadata": {},
   "outputs": [],
   "source": [
    "os.environ['IBM_DB_HOME']='C:\\Program Files\\IBM\\SQLLIB'"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "metadata": {},
   "outputs": [],
   "source": [
    "%sql ibm_db_sa://vkf57376:3xm%2Bmkrv8fcvm60v@dashdb-txn-sbox-yp-lon02-07.services.eu-gb.bluemix.net:50000/BLUDB"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      " * ibm_db_sa://vkf57376:***@dashdb-txn-sbox-yp-lon02-07.services.eu-gb.bluemix.net:50000/BLUDB\n",
      "Done.\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table>\n",
       "    <tr>\n",
       "        <th>tabschema</th>\n",
       "        <th>tabname</th>\n",
       "        <th>owner</th>\n",
       "        <th>ownertype</th>\n",
       "        <th>TYPE</th>\n",
       "        <th>status</th>\n",
       "        <th>base_tabschema</th>\n",
       "        <th>base_tabname</th>\n",
       "        <th>rowtypeschema</th>\n",
       "        <th>rowtypename</th>\n",
       "        <th>create_time</th>\n",
       "        <th>alter_time</th>\n",
       "        <th>invalidate_time</th>\n",
       "        <th>stats_time</th>\n",
       "        <th>colcount</th>\n",
       "        <th>tableid</th>\n",
       "        <th>tbspaceid</th>\n",
       "        <th>card</th>\n",
       "        <th>npages</th>\n",
       "        <th>mpages</th>\n",
       "        <th>fpages</th>\n",
       "        <th>npartitions</th>\n",
       "        <th>nfiles</th>\n",
       "        <th>tablesize</th>\n",
       "        <th>overflow</th>\n",
       "        <th>tbspace</th>\n",
       "        <th>index_tbspace</th>\n",
       "        <th>long_tbspace</th>\n",
       "        <th>parents</th>\n",
       "        <th>children</th>\n",
       "        <th>selfrefs</th>\n",
       "        <th>keycolumns</th>\n",
       "        <th>keyindexid</th>\n",
       "        <th>keyunique</th>\n",
       "        <th>checkcount</th>\n",
       "        <th>datacapture</th>\n",
       "        <th>const_checked</th>\n",
       "        <th>pmap_id</th>\n",
       "        <th>partition_mode</th>\n",
       "        <th>log_attribute</th>\n",
       "        <th>pctfree</th>\n",
       "        <th>append_mode</th>\n",
       "        <th>REFRESH</th>\n",
       "        <th>refresh_time</th>\n",
       "        <th>LOCKSIZE</th>\n",
       "        <th>VOLATILE</th>\n",
       "        <th>row_format</th>\n",
       "        <th>property</th>\n",
       "        <th>statistics_profile</th>\n",
       "        <th>compression</th>\n",
       "        <th>rowcompmode</th>\n",
       "        <th>access_mode</th>\n",
       "        <th>clustered</th>\n",
       "        <th>active_blocks</th>\n",
       "        <th>droprule</th>\n",
       "        <th>maxfreespacesearch</th>\n",
       "        <th>avgcompressedrowsize</th>\n",
       "        <th>avgrowcompressionratio</th>\n",
       "        <th>avgrowsize</th>\n",
       "        <th>pctrowscompressed</th>\n",
       "        <th>logindexbuild</th>\n",
       "        <th>codepage</th>\n",
       "        <th>collationschema</th>\n",
       "        <th>collationname</th>\n",
       "        <th>collationschema_orderby</th>\n",
       "        <th>collationname_orderby</th>\n",
       "        <th>encoding_scheme</th>\n",
       "        <th>pctpagessaved</th>\n",
       "        <th>last_regen_time</th>\n",
       "        <th>secpolicyid</th>\n",
       "        <th>protectiongranularity</th>\n",
       "        <th>auditpolicyid</th>\n",
       "        <th>auditpolicyname</th>\n",
       "        <th>auditexceptionenabled</th>\n",
       "        <th>definer</th>\n",
       "        <th>oncommit</th>\n",
       "        <th>logged</th>\n",
       "        <th>onrollback</th>\n",
       "        <th>lastused</th>\n",
       "        <th>control</th>\n",
       "        <th>temporaltype</th>\n",
       "        <th>tableorg</th>\n",
       "        <th>extended_row_size</th>\n",
       "        <th>pctextendedrows</th>\n",
       "        <th>remarks</th>\n",
       "    </tr>\n",
       "    <tr>\n",
       "        <td>VKF57376</td>\n",
       "        <td>SCHOOLS</td>\n",
       "        <td>VKF57376</td>\n",
       "        <td>U</td>\n",
       "        <td>T</td>\n",
       "        <td>N</td>\n",
       "        <td>None</td>\n",
       "        <td>None</td>\n",
       "        <td>None</td>\n",
       "        <td>None</td>\n",
       "        <td>2020-07-16 14:29:26.952733</td>\n",
       "        <td>2020-07-16 14:29:26.952733</td>\n",
       "        <td>2020-07-16 14:29:26.952733</td>\n",
       "        <td>2020-07-16 14:30:42.485561</td>\n",
       "        <td>78</td>\n",
       "        <td>30</td>\n",
       "        <td>1343</td>\n",
       "        <td>566</td>\n",
       "        <td>15</td>\n",
       "        <td>0</td>\n",
       "        <td>16</td>\n",
       "        <td>-1</td>\n",
       "        <td>-1</td>\n",
       "        <td>-1</td>\n",
       "        <td>0</td>\n",
       "        <td>vkf57376space1</td>\n",
       "        <td>None</td>\n",
       "        <td>None</td>\n",
       "        <td>0</td>\n",
       "        <td>0</td>\n",
       "        <td>0</td>\n",
       "        <td>0</td>\n",
       "        <td>0</td>\n",
       "        <td>0</td>\n",
       "        <td>0</td>\n",
       "        <td>N</td>\n",
       "        <td>YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY</td>\n",
       "        <td>1</td>\n",
       "        <td> </td>\n",
       "        <td>0</td>\n",
       "        <td>-1</td>\n",
       "        <td>N</td>\n",
       "        <td> </td>\n",
       "        <td>None</td>\n",
       "        <td>R</td>\n",
       "        <td> </td>\n",
       "        <td>N</td>\n",
       "        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n",
       "        <td>None</td>\n",
       "        <td>N</td>\n",
       "        <td> </td>\n",
       "        <td>F</td>\n",
       "        <td>None</td>\n",
       "        <td>0</td>\n",
       "        <td>N</td>\n",
       "        <td>999</td>\n",
       "        <td>0</td>\n",
       "        <td>0.0</td>\n",
       "        <td>844</td>\n",
       "        <td>0.0</td>\n",
       "        <td>None</td>\n",
       "        <td>1208</td>\n",
       "        <td>SYSIBM</td>\n",
       "        <td>IDENTITY</td>\n",
       "        <td>SYSIBM</td>\n",
       "        <td>IDENTITY</td>\n",
       "        <td> </td>\n",
       "        <td>0</td>\n",
       "        <td>2020-07-16 14:29:26.952733</td>\n",
       "        <td>0</td>\n",
       "        <td> </td>\n",
       "        <td>None</td>\n",
       "        <td>None</td>\n",
       "        <td>N</td>\n",
       "        <td>VKF57376</td>\n",
       "        <td> </td>\n",
       "        <td> </td>\n",
       "        <td> </td>\n",
       "        <td>2020-07-26</td>\n",
       "        <td> </td>\n",
       "        <td>N</td>\n",
       "        <td>R</td>\n",
       "        <td>N</td>\n",
       "        <td>-1.0</td>\n",
       "        <td>None</td>\n",
       "    </tr>\n",
       "</table>"
      ],
      "text/plain": [
       "[('VKF57376', 'SCHOOLS', 'VKF57376', 'U', 'T', 'N', None, None, None, None, datetime.datetime(2020, 7, 16, 14, 29, 26, 952733), datetime.datetime(2020, 7, 16, 14, 29, 26, 952733), datetime.datetime(2020, 7, 16, 14, 29, 26, 952733), datetime.datetime(2020, 7, 16, 14, 30, 42, 485561), 78, 30, 1343, 566, 15, 0, 16, -1, -1, -1, 0, 'vkf57376space1', None, None, 0, 0, 0, 0, 0, 0, 0, 'N', 'YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY', 1, ' ', '0', -1, 'N', ' ', None, 'R', ' ', 'N', '                                ', None, 'N', ' ', 'F', None, 0, 'N', 999, 0, 0.0, 844, 0.0, None, 1208, 'SYSIBM', 'IDENTITY', 'SYSIBM', 'IDENTITY', ' ', 0, datetime.datetime(2020, 7, 16, 14, 29, 26, 952733), 0, ' ', None, None, 'N', 'VKF57376', ' ', ' ', ' ', datetime.date(2020, 7, 26), ' ', 'N', 'R', 'N', -1.0, None)]"
      ]
     },
     "execution_count": 9,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "%sql select * from SYSCAT.TABLES where TABNAME = 'SCHOOLS'"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.8.4"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 4
}
